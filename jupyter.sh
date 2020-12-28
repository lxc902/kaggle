set -x

sudo service docker start

wslview http://localhost:8888

# 1. Original: with token
#sh -c "docker run -u $(id -u):$(id -g) -it --gpus all -p 8888:8888 -v /home/neo/dev:/tf/dev tensorflow/tensorflow:latest-gpu-py3-jupyter "

# 2. Removed password, with implicit cmd
#sh -c "docker run -u $(id -u):$(id -g) -it --gpus all -p 8888:8888 -v /home/neo/dev:/tf/dev lxc902/myjupyter "

# 3. Removed password, with explicit cmd
#sh -c "docker run -u $(id -u):$(id -g) -it --gpus all -p 8888:8888 -v /home/neo/dev:/tf/dev lxc902/myjupyter:latest bash -c \"source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' \""
sh -c "docker run -u $(id -u):$(id -g) -it --gpus all -p 8888:8888 -v /home/neo/dev:/tf/dev lxc902/myjupyter bash -c \"source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' \""
