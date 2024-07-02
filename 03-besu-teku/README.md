# Besu & Teku Client on Holesky testnet

This docker compose stack starts Besu and Teku in Holesky testnet.

Start the stack with following command
```bash
# Requires building the image from the Dockerfile
docker-compose up --build -d
```

```sh
# Following log will appear in Besu logs when Besu start the main loop 
2024-07-02 05:21:54.886+00:00 | main | INFO  | Runner | Ethereum main loop is up.

# Besu need to find the peers to import the blocks. Following log indicates 2 peers conntected
# Progress of the block import
2024-07-02 05:22:38.182+00:00 | EthScheduler-Services-42 (importBlock) | INFO  | ImportBlocksStep | Block import progress: 215173 of 1848003 (11%), Peer count: 2
2024-07-02 05:23:12.350+00:00 | EthScheduler-Services-42 (importBlock) | INFO  | ImportBlocksStep | Block import progress: 247973 of 1848003 (13%), Peer count: 2

# Following log indicates the Worldstate download
2024-07-02 05:23:29.484+00:00 | EthScheduler-Services-3 (batchPersistAccountData) | INFO  | SnapSyncMetricsManager | Worldstate download progress: 1.44%, Peer count: 2
```
