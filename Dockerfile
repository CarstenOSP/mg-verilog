FROM --platform=linux/amd64 continuumio/anaconda3

COPY ./badproxy /etc/apt/apt.conf.d/99fixbadproxy
RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install build-essential git libffi-dev gcc \
    autoconf gperf make gcc g++ bison flex graphviz libgraphviz-dev \
    parallel
COPY ./environment.yml /
RUN PIP_NO_DEPS=1 conda env create -f /environment.yml

# Fixing packages
COPY ./chromadb_fix.py /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/chromadb/segment/impl/manager/
RUN rm /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/chromadb/segment/impl/manager/local.py -f
RUN mv /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/chromadb/segment/impl/manager/chromadb_fix.py \
       /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/chromadb/segment/impl/manager/local.py

COPY ./langchain_fix.py /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/langchain/chat_models
RUN rm  /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/langchain/chat_models/openai.py -f
RUN mv /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/langchain/chat_models/langchain_fix.py \
       /opt/conda/envs/aigchip-sft/lib/python3.8/site-packages/langchain/chat_models/openai.py
