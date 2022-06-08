## GIANT+XRT+GATv2

### 1 Environmental Requirements.

- torch>=1.6.0
- torch_geometric>=2.0.4
- libpecos>=0.1.0

### 2 Experimental datasets.

The executive program automatically retrieves the experimental datasets. 

### 3 Load the pre-training model.

download link: https://archive.org/download/pecos-dataset/giant-xrt/ogbn-arxiv.tar.gz 
Decompress the package and store it in the root directory.
```
├── README.md
├── gnn.py
├── logger.py
├── ogbn-arxiv
│   ├── X.all.txt
│   ├── X.all.xrt-emb.npy
│   ├── params.json
│   └── xrt_models
│       ├── param.json
│       ├── predict.log
│       ├── text_encoder
│       │   ├── C.npz
│       │   ├── param.json
│       │   ├── text_encoder
│       │   │   ├── config.json
│       │   │   └── pytorch_model.bin
│       │   ├── text_model
│       │   └── text_tokenizer
│       │       ├── special_tokens_map.json
│       │       ├── tokenizer.json
│       │       ├── tokenizer_config.json
│       │       └── vocab.txt
│       └── train.log
├── paper
│   ├── GATv2.pdf
│   └── Node Feature Extraction by self-supervides mylti-scale Neighborhood prediction.pdf
└── run.sh
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

