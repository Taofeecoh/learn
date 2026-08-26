# What problem does Spark solve?

![alt text](../../asset/spark2.png)

## single vs multi threaded

![alt text](../../asset/spark1.png)

## cores : pandas vs polars : instruction

## nodes

## horizontal vs vertical scaling

## mapreduce: the problem with mapreduce
- does things on disk (disk i/o) whereas spark is `in-memory` processing engine

## Interaction with spark
    - API
    - Spark house => Spark Architecture
    - Scripts/Jobs in data lake which is prompted to submit to spark architecture

## Spark Architecture

### Application submit workflow
![app submit workflow](../../asset/spark4.png)

- YARN
    - has node manager for allocating resources
- Driver: 
    - usually one per application submitted to the cluster
    - distributes the task
- Executors
- Catalyst Optimizer

    ![alt text](../../asset/spark3.png)

- Dag scheduler
- Task scheduler
- DagBackend


