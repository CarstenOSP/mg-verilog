import os
import sys
from multiprocess import Pool
from dotenv import load_dotenv
load_dotenv()
sys.path.append(os.path.join(os.path.dirname(os.path.abspath(__file__)),os.environ.get("CHATBOT_BACKEND_DIR"),os.environ.get("SRC_DIR")))
import openai
import requests
import json
import copy
import time
import datetime
import shutil
from utils import *


def folder_create(folder_name):
    if os.path.exists(folder_name):
        # Automatically delete existing directory
        shutil.rmtree(folder_name)
    # Create new directory
    os.makedirs(folder_name)


def f_create_code_assets(preprocessor):
    def f(code_file):
        src_code_file = os.path.join(preprocessor.store_src_code_dir, code_file)
        csv_code_file = os.path.join(preprocessor.csv_code_dir, code_file.split(".")[0] + ".csv")
        csv_comment_file = os.path.join(preprocessor.csv_comment_dir, code_file.split(".")[0] + ".csv")
        convert_raw_src_code_to_csv(src_code_file, csv_code_file, csv_comment_file, discard_original_comment = preprocessor.discard_original_comment)
    return f


class CodePreprocesser:
    def __init__(self, code_dir, store_src_code_dir, 
                 csv_code_dir, csv_comment_dir, csv_new_comment_dir, 
                 csv_pure_gen_comment_dir, code_summary_dir, documented_code_dir,
                 code_suffix =[".v", ".sv", ".vh"], discard_original_comment = False):
        self.code_dir = code_dir
        self.code_suffix = code_suffix
        self.store_src_code_dir = store_src_code_dir
        self.csv_code_dir = csv_code_dir
        self.csv_comment_dir = csv_comment_dir
        self.csv_new_comment_dir = csv_new_comment_dir
        self.csv_pure_gen_comment_dir = csv_pure_gen_comment_dir
        self.code_summary_dir = code_summary_dir
        self.documented_code_dir = documented_code_dir
        self.discard_original_comment = discard_original_comment
        #check if the directory exists
        folder_create(self.store_src_code_dir)
        folder_create(self.csv_code_dir)
        folder_create(self.csv_comment_dir)
        folder_create(self.csv_new_comment_dir)
        folder_create(self.csv_pure_gen_comment_dir)
        folder_create(self.code_summary_dir)
        folder_create(self.documented_code_dir)
    
    def raw_code_copy(self, src_dir, dst_dir, skip_preprocess = False):
        #copy all the files with the suffix to the dst_dir
        self.code_files = []
        for file in os.listdir(src_dir):
            if file.endswith(tuple(self.code_suffix)):
                if not skip_preprocess:
                    shutil.copy(os.path.join(src_dir, file), dst_dir)
                self.code_files.append(file)
    
    def create_code_assets(self):
        #separate the comments and code and create corresponding csv files
        with Pool(processes=20) as p:
            list(tqdm(p.imap_unordered(f_create_code_assets(self), self.code_files), total=len(self.code_files)))
        # map(f_create_code_assets(self), self.code_files)

    def pre_process_routines(self, dst_dir, discard_original_comment = True, rtl = True):
        for file in os.listdir(dst_dir):
            preprocess(os.path.join(dst_dir, file),discard_original_comment=discard_original_comment, rtl=rtl)

if __name__ == "__main__":
    code_dir = "../verilog/AccDNN/verilog"
    if os.environ.get("TARGET_LANG") == "verilog":
        code_suffix = [".v", ".sv", ".vh"]
    elif os.environ.get("TARGET_LANG") == "xilinx_hls":
        code_suffix = [".c", ".cpp", ".h", ".hpp"]
    store_src_code_dir = os.environ.get("STORE_SRC_CODE_DIR")
    csv_code_dir = os.environ.get("CSV_CODE_DIR")
    csv_comment_dir = os.environ.get("CSV_COMMENT_DIR")
    csv_new_comment_dir = os.environ.get("CSV_NEW_COMMENT_DIR")
    csv_pure_gen_comment_dir = os.environ.get("CSV_PURE_GEN_COMMENT_DIR")
    code_summary_dir = os.environ.get("CODE_SUMMARY_DIR")
    documented_code_dir = os.environ.get("DOCUMENTED_CODE_DIR")

    code_preprocesser = CodePreprocesser(code_dir, store_src_code_dir, 
                                         csv_code_dir, csv_comment_dir, 
                                         csv_new_comment_dir, csv_pure_gen_comment_dir, 
                                         code_summary_dir, documented_code_dir,
                                         code_suffix=code_suffix, discard_original_comment = False)
    code_preprocesser.raw_code_copy(code_dir, store_src_code_dir)
    code_preprocesser.create_code_assets()
