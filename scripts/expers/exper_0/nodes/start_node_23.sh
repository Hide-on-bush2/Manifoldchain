#!/bin/bash
cd ../../../
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 5 1 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 5 2 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 5 3 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 1 1 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 1 2 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 2 1 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 2 2 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 3 1 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 3 2 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 4 1 100
sudo ./scripts/network_simulation/start_network_node.sh delay 5 4 4 2 100
sudo ip netns exec ramjet-s5-n4 ./target/debug/bitcoin --p2p 10.0.5.8:6000 --api 10.0.5.8:7000 -c 10.0.5.2:6000 -c 10.0.5.4:6000 -c 10.0.5.6:6000 -c 10.0.1.2:6000 -c 10.0.1.4:6000 -c 10.0.2.2:6000 -c 10.0.2.4:6000 -c 10.0.3.2:6000 -c 10.0.3.4:6000 -c 10.0.4.2:6000 -c 10.0.4.4:6000 --shardId 4 --nodeId 23 --experNumber 0 --shardNum 5 --shardSize 5 --blockSize 2048 --k 6 --domesticRatio 0.7 --eDiff 000002d999999999999999999999999999999999999999999999999999999993 --iDiff 0000007fffffffffffffffffffffffffffffffffffffffffffffffffffffffff