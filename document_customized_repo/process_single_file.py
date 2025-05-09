import os
import sys
import json
import argparse
import shutil
import time
from dotenv import load_dotenv
load_dotenv()

# Add parent directory to path
sys.path.append(os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from auto_data_gen_val.code_repo_documentor import CodeRepoDocumentor
from langchain.callbacks import get_openai_callback

# Override the folder_create function to avoid interactive prompts
import auto_data_gen_val.code_preprocesser as code_preprocesser

# Store the original function
original_folder_create = code_preprocesser.folder_create

# Override with non-interactive version
def non_interactive_folder_create(directory):
    if os.path.exists(directory):
        # Instead of asking, just remove and recreate
        shutil.rmtree(directory)
    os.makedirs(directory)

# Replace the function temporarily
code_preprocesser.folder_create = non_interactive_folder_create

def process_single_file(file_path, output_dir, code_metadata_dir, code_lib_path, code_vec_store):
    """Process a single Verilog file with the documentation pipeline"""
    
    try:
        # Extract filename and create temporary directory structure for processing this file
        file_name = os.path.basename(file_path)
        file_base = os.path.splitext(file_name)[0]
        temp_dir = os.path.join(output_dir, f"temp_{file_base}")
        
        # Create temporary directories with unique timestamp to avoid conflicts
        timestamp = int(time.time())
        temp_dir = os.path.join(output_dir, f"temp_{file_base}_{timestamp}")
        
        # Create necessary directories
        os.makedirs(temp_dir, exist_ok=True)
        store_src_code_dir = os.path.join(temp_dir, "src_code")
        csv_code_dir = os.path.join(temp_dir, "csv_code") 
        csv_comment_dir = os.path.join(temp_dir, "csv_comment")
        csv_new_comment_dir = os.path.join(temp_dir, "csv_new_comment")
        csv_pure_gen_comment_dir = os.path.join(temp_dir, "csv_pure_gen_comment")
        code_summary_dir = os.path.join(temp_dir, "code_summary")
        documented_code_dir = os.path.join(temp_dir, "documented_code")
        
        for directory in [store_src_code_dir, csv_code_dir, csv_comment_dir, csv_new_comment_dir, 
                        csv_pure_gen_comment_dir, code_summary_dir, documented_code_dir]:
            os.makedirs(directory, exist_ok=True)
        
        # Set environment variables for this process
        os.environ["STORE_SRC_CODE_DIR"] = store_src_code_dir
        os.environ["CSV_CODE_DIR"] = csv_code_dir
        os.environ["CSV_COMMENT_DIR"] = csv_comment_dir
        os.environ["CSV_NEW_COMMENT_DIR"] = csv_new_comment_dir
        os.environ["CSV_PURE_GEN_COMMENT_DIR"] = csv_pure_gen_comment_dir
        os.environ["CODE_SUMMARY_DIR"] = code_summary_dir
        os.environ["DOCUMENTED_CODE_DIR"] = documented_code_dir
        os.environ["TARGET_LANG"] = "verilog"
        
        # Create a single-file temp directory with just this file
        single_file_dir = os.path.join(temp_dir, "single_file")
        os.makedirs(single_file_dir, exist_ok=True)
        shutil.copy2(file_path, os.path.join(single_file_dir, file_name))
        
        # Create minimal metadata for this file
        code_metadata = {
            file_base: {
                "module_inst_list": []  # We could enhance this if needed
            }
        }
        
        # Find and load the actual metadata if it exists
        code_metadata_file = os.path.join(code_metadata_dir, "codes.json")
        if os.path.exists(code_metadata_file):
            try:
                with open(code_metadata_file, "r") as f:
                    full_metadata = json.load(f)
                    if file_base in full_metadata:
                        code_metadata[file_base] = full_metadata[file_base]
            except Exception as e:
                print(f"Warning: Could not load metadata for {file_base}: {e}")
        
        temp_metadata_file = os.path.join(temp_dir, "codes.json")
        with open(temp_metadata_file, "w") as f:
            json.dump(code_metadata, f)
        
        # Process the file
        with get_openai_callback() as cb:
            documentor = CodeRepoDocumentor(
                code_dir=single_file_dir,
                store_src_code_dir=store_src_code_dir,
                csv_code_dir=csv_code_dir,
                csv_comment_dir=csv_comment_dir,
                csv_new_comment_dir=csv_new_comment_dir,
                csv_pure_gen_comment_dir=csv_pure_gen_comment_dir,
                code_summary_dir=code_summary_dir,
                documented_code_dir=documented_code_dir,
                code_metadata_file=temp_metadata_file,
                code_suffix=[".v", ".sv", ".vh"],
                language="verilog",
                discard_original_comment=True,
                code_lib_path=code_lib_path,
                code_vec_store=code_vec_store,
                cb=cb
            )
            
            documentor.create_embedding()
            documentor.code_preprocess(skip_preprocess=False)
            documentor.document_repo()
            
            # Copy results to final output location
            final_output_dir = os.path.join(output_dir, "documented_code", "part0", file_base)
            os.makedirs(final_output_dir, exist_ok=True)
            
            # Copy the documented file and summary
            if os.path.exists(os.path.join(documented_code_dir, file_name)):
                shutil.copy2(
                    os.path.join(documented_code_dir, file_name), 
                    os.path.join(final_output_dir, file_name)
                )
            
            if os.path.exists(os.path.join(code_summary_dir, f"{file_base}.txt")):
                shutil.copy2(
                    os.path.join(code_summary_dir, f"{file_base}.txt"), 
                    os.path.join(final_output_dir, f"{file_base}.txt")
                )
        
        return file_base
    
    finally:
        # Restore the original folder_create function
        code_preprocesser.folder_create = original_folder_create

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Process a single Verilog file")
    parser.add_argument("file_path", help="Path to the Verilog file to process")
    parser.add_argument("--output_dir", required=True, help="Base output directory")
    parser.add_argument("--code_metadata_dir", required=True, help="Code metadata directory")
    parser.add_argument("--code_lib_path", required=True, help="Code library path")
    parser.add_argument("--code_vec_store", required=True, help="Code vector store")
    
    args = parser.parse_args()
    
    process_single_file(
        args.file_path, 
        args.output_dir, 
        args.code_metadata_dir,
        args.code_lib_path,
        args.code_vec_store
    )