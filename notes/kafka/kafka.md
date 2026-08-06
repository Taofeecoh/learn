# kafka

## overview
1) concepts
    - kafka topics
    - kafka message
    - partitions & in-sync-relicas
    - offset
    - producers
    - key hashing
    - consumers
    - consumer groups
    - consumer offsets
    - kafka brokers / bootstrap server
    - topic replication factor
    - kafka consumer replica fetching (2.4+)
    - producer acknowledgements (acks 0, 1 all)
    - zookeeper (present in 2+ | replaced with kafka raft in 3+ | not available in 4+)
2) Setup


## setup for local dev
- docker compose
    - [conduktor repo for kafka installation](https://github.com/conduktor/kafka-stack-docker-compose)
- Windows
    - Install WSL2
    - open Ubuntu terminal to launch linux
    - install Java JDK (say version 21 as at documenting this): 
        - [link](https://docs.aws.amazon.com/corretto/latest/corretto-21-ug/generic-linux-install.html)
        - follow the prompts
    - download kafka from binary section
        
        - [link](https://kafka.apache.org/community/downloads/)

        ![screenshot pointing kafka binary section in download page](image.png)
        
        - copy the link and paste in terminal with `wget` (`wget https://archive.apache.org/dist/kafka/4.0.0/kafka_2.13-4.0.0.tgz`)
        - unzip file : 
    - extract contents on WSL2
    - setup path environment variables for access to kafka binaries


