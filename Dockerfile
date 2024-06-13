FROM nvcr.io/nvidia/pytorch:21.04-py3

COPY . /opt/n2v

WORKDIR /opt/n2v

#CMD python main.py --mode train --scope resnet --name_data 400_gray --dir_data ./datasets --dir_log ./log \
#--dir_checkpoint ./checkpoints --ny_in 180 --nx_in 180 --nch_in 1 --ny_load 64 --nx_load 64 --nch_load 1 \
#--ny_out 180 --nx_out 180 --nch_out 1 --num_epoch 200 --gpu_ids 0  --lr_G 0.0004 --batch_size 128

CMD python main.py --mode test --scope resnet --name_data 400_gray --dir_data ./datasets --dir_log ./log \
 --dir_checkpoint ./checkpoints --dir_result ./results --gpu_ids 0 --nch_out 1 --ny_out 180 --nx_out 180 --nch_in 1


#CMD sleep infinity