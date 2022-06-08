## GIANT+XRT+GATv2

### 1 Environmental Requirements.

- torch>=1.6.0
- torch_geometric>=2.0.4
- libpecos>=0.1.0

### 2 Experimental datasets.

We have already upload datasets in the directory.

```
./datasets
```

### 3 Load the pre-training model.

We have already upload model in the directory.

```
./model/X.all.xrt-emb.npy
```

### 4 Run the experiment.

```shell
sh run.sh
```

### 5 Detailed Hyperparameter.

```
Namespace(data_root_dir='dataset', device=0, dropout=0.75, epochs=2000, hidden_channels=128, log_steps=1, lr=0.0008, mode='GAT', node_emb_path='model/X.all.xrt-emb.npy', num_layers=3, runs=10)
```

### 6 Results.

If execute correctly, you should have the following performance.

|      Model      | Test Accuracy  | Valid Accuracy |   Hardware    | Parameters |
| :-------------: | :------------: | :------------: | :-----------: | :--------: |
| GIANT+XRT+GATv2 | 74.15 ± 0.0005 | 75.27 ± 0.0008 | Tesla T4(16G) |   207520   |

