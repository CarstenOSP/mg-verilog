git clone https://github.com/steveicarus/iverilog.git 
cd iverilog
autoconf 
./configure
make 
make install
cd ..

pip3 install -e verilog_eval
cd model_eval_qlora/
mkdir data
cd .. 


git clone https://github.com/PyHDI/Pyverilog.git
cd Pyverilog
git checkout 1.3.0
pip3 install jinja2 ply
pip3 install pytest pytest-pythonpath  
pip3 install pygraphviz
python setup.py install
cd ..