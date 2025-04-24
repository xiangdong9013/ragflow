#!/bin/bash

# Activate the virtual environment
source .venv/bin/activate    
# Add the current directory to the Python path
export PYTHONPATH=$(pwd) 

# 启动ragflow后台服务
bash docker/entrypoint.sh   