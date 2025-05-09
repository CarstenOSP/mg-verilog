#!/bin/bash
OUTPUT_DIR=$1
CURRENT_DIR=$(cd $(dirname $0); pwd)
export DATA4AIGCHIP_HOME=$(cd $CURRENT_DIR/..; pwd)
echo "DATA4AIGCHIP_HOME=$DATA4AIGCHIP_HOME"
echo "OUTPUT_DIR=$OUTPUT_DIR"

# Make sure GNU Parallel is installed
if ! command -v parallel &> /dev/null; then
    echo "GNU Parallel is not installed. Please install it first."
    echo "On Ubuntu/Debian: sudo apt-get install parallel"
    echo "On CentOS/RHEL: sudo yum install parallel"
    exit 1
fi

# Create necessary directories if they don't exist
mkdir -p "$OUTPUT_DIR/documented_code/part0"
mkdir -p "$OUTPUT_DIR/output_dir_for_code_metadata"
mkdir -p "$OUTPUT_DIR/directory_to_store_common_modules"
mkdir -p "$OUTPUT_DIR/code_vec_store/test"
mkdir -p "$OUTPUT_DIR/dataset_metadata/part0"

# Uncomment these if you need preprocessing
# python ../auto_data_gen_val/preprocess_data/process_data/preprocess.py $OUTPUT_DIR/raw_code -customized_dataset_dir $OUTPUT_DIR

# python ../auto_data_gen_val/utils.py \
#     --src_code_dir $OUTPUT_DIR/raw_code \
#     --src_code_metadata_file $OUTPUT_DIR/module_inst.json \
#     --output_dir $OUTPUT_DIR/partitioned_dataset_output_path/ \
#     --shared_lib_dir $OUTPUT_DIR/directory_to_store_common_modules/ \
#     --output_code_metadata_dir $OUTPUT_DIR/output_dir_for_code_metadata/ \
#     --output_code_metadata_file codes.json \
#     --module_to_task_id_map_file $OUTPUT_DIR/module_name_to_task_id_mapping.json

echo "Finding Verilog files in $OUTPUT_DIR/raw_code..."
# Find all Verilog files
VERILOG_FILES=$(find "$OUTPUT_DIR/raw_code" -type f \( -name "*.v" -o -name "*.sv" -o -name "*.vh" \))
VERILOG_FILE_COUNT=$(echo "$VERILOG_FILES" | wc -l)

echo "Found $VERILOG_FILE_COUNT Verilog files to process"

# Determine number of parallel jobs (adjust as needed for your system)
NUM_CORES=$(nproc)
PARALLEL_JOBS=$(( (NUM_CORES > 1 ? NUM_CORES - 1 : 1) > 16 ? 16 : (NUM_CORES > 1 ? NUM_CORES - 1 : 1) ))

echo "Processing files in parallel using $PARALLEL_JOBS processes..."

# Process files in parallel using our script
echo "$VERILOG_FILES" | parallel -j $PARALLEL_JOBS python $CURRENT_DIR/process_single_file.py {} \
    --output_dir $OUTPUT_DIR \
    --code_metadata_dir $OUTPUT_DIR/output_dir_for_code_metadata \
    --code_lib_path $OUTPUT_DIR/directory_to_store_common_modules \
    --code_vec_store $OUTPUT_DIR/code_vec_store/test

echo "Finished parallel file processing"

# After all files are processed, generate block and global summaries
python ../auto_data_gen_val/gen_block_summaries.py 0 1 \
    --code_metadata_dir $OUTPUT_DIR/output_dir_for_code_metadata/ \
    --documented_code_dir $OUTPUT_DIR/documented_code \
    --block_line_length 10 \
    --model o1-2024-12-17

python ../auto_data_gen_val/gen_global_summary.py 0 1 \
    --code_metadata_dir $OUTPUT_DIR/output_dir_for_code_metadata/ \
    --documented_code_dir $OUTPUT_DIR/documented_code \
    --model o1-2024-12-17 \
    --detailed

python ../auto_data_gen_val/gen_global_summary.py 0 1 \
    --code_metadata_dir $OUTPUT_DIR/output_dir_for_code_metadata/ \
    --documented_code_dir $OUTPUT_DIR/documented_code \
    --model o1-2024-12-17

python $CURRENT_DIR/decode_results.py $OUTPUT_DIR

echo "Documentation process completed successfully"