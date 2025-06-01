#!/bin/bash

# Activate the virtual environment
source .venv/bin/activate    
# Add the current directory to the Python path
export PYTHONPATH=$(pwd) 

JEMALLOC_PATH=$(pkg-config --variable=libdir jemalloc)/libjemalloc.so;
LD_PRELOAD=$JEMALLOC_PATH python rag/svr/task_executor.py 1;

python api/ragflow_server.py;

# 启动ragflow后台服务
# bash docker/entrypoint.sh   