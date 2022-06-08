python -u gnn.py \
    --runs 10 \
    --data_root_dir dataset \
    --mode GAT \
    --lr 8e-4 \
    --node_emb_path ogbn-arxiv/X.all.xrt-emb.npy \
    --epoch 3000 \
    --hidden_channels 128 \
    --dropout 0.75 \
    |& tee giant-xrt-GATv2.log