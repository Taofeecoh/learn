<!-- ### Not clear
- Change Data Capture
- Imperative and declarative data solutions
- Latency
- Data Payloads
- Bound states of data
- Streaming methods
- FTP/SFTP transfers -->

## Data Ingestion
Data ingestion is the process of moving data from source to target destination. Data could be moved from within organization (internal sources) or external sources. An important key to note: timely ingestion is paramount.
### Sources
An instance of `sources` could be :
- Ads and Analytics platforms => Google, mMta
- Socials => LinkedIn, Snapchat, Facebook
- API
#### Importance of choosing sources
- Examining sources : It is an onus the data engineer (an organization's expert) to consider which source is useful, as it is possible that a source data might not be needed or another source might just be better.
- _Consider asking questions like:_
    - who will the data serve?
    - how will the data be used?
    - how often will the data be needed? => Frequency
    - how large is the data expected to get?
    - what is the input format?
    - what transformation needs to be done? => data quality
    - how will the data be stored?

### Destination
- Examining destinations : Priority is given to stakeholders as to whom/where the data will serve; BI, Analytics, Artificial Intelligence/Machine Learning?
- Staging: Typically data lake storage systems. Most data could be ingested to cloud data lakes; S3, GCP, Azure among many others before moving the data into a warehouse for analysis.
    >Lakehouse would be another consideration as this can serve the purpose of `data lake and warehouse combined`
    - Best practice for staging data?

    Utilizing file formats that are metadata-centric like `Parquet`; a heavily compressed columnar format ideal for large datasets.
    Generally, metadata layered data offer features like `time travel`, `ACID` (Atomicity, Consistency, Isolation, Durability), `compliance`...
- _Checklist for selecting Destinations:_

    | Key | Value |
    | - | - |
    |whom are we collaborating with? | Accounting department |
    |how will the data be used? | 
    |how many destinations are there? |
    |what is the format of storage? |
    |what is the frequency? |

### Ingestion considerations
- [Frequency](#frequency)
- [Volume](#volume)
- [Format](#format)
- [Processing](#processing)

#### Frequency
The decision to ingest data in `batch` or `streaming` formats is highly influenced by: `Bound state` ( _`bounded`_ or _`unbounded`_) and `Business needs`.
**What is bounded data | what is unbounded data?**
    
- **Batch**: processing of data in batches.
- **Micro-batch**: processing of data in batches but a bit more frequent than batch.
- **Streaming**: continuous reading of data as they are generated.
![alt text](image.png)

     **<u>Methods of streaming</u>**
     - Windowing
     - Fixed windows
     - Sliding windows
     - Session
     - Time agnostic

     ![alt text](image-1.png)
#### Volume
#### Format
#### Processing

---

## Data Transformation
This is the process of polishing data in its raw format to usable form. How a data is transformed depends on where it is.
### Transformation environments

- Data Warehouses: transformation done with SQL.
- Data Lakes: transformation is orchestrated and performed via external sources.
- Data Lakehouses

### Data Transformation Patterns
- Enrichment: add more information to data to make it mmore readable.
- Joining
- Filtering
- Structuring
- Conversion
- Aggregation
- Anonymization
- Deduplication
- Splitting

### Data Update patterns
- `Overwrite` : updating by replacing old data with new records, thereby, losing record of the old data.
- `Insert`: The mode of joining (appending) new records/rows to existing data, usually the existing data is independent of the new records.
- `Upsert`: the mode of updating and inserting in a database at the same time. Typically, this is running against a set logic such as if something exists in a field of a table, then an update of such and such should be done (UPDATE), otherwise, INSERT. This format albeit complex, allows an up-to-date database always.
- `Delete`: could be soft or hard. When a record is deleted softly, the log/history record captures this action and keeps it recorded. However, in hard delete, no record is left. Soft delete is usually a safe practice in cases where historical records of a databse is prioritized, otherwise hard delete in cases where data protectionn policy is held in high regard.


### Best Data Transformation practices
- `Staging`: Following the concept,
    - `Medallion architecture` => is a data design pattern that logically segments data in a lakehouse with the aim of progressively improving the data quality as it flows through each layer. The 3 layers: `Bronze`, `Silver`, and `Gold`. 
        - `Bronze`: raw data is staged in this layer after ingestion without any transofrmation.
        - `Silver`: data validity check and moderate transformation is done with barely any addition.
        - `Gold`: final transformation and update patterns can be applied in this layer, after which the data is available for consumption to the downstream teams. 
- `Idempotency`: This is the process of making data reproducible. It aims for a pipeline to always give similar structure/format of data whenever it's being run; consistency.
- `Normalization`: aims at enforcing data integrity and reducinng redundancy downstream. This concept works by spliting data into different multiple tables and establishing a relationship among the tables. A trade-off of this concept is query speed; because it thrives on multiple joins, latency is high, and queried data takes time to be generated. However, this is a best practice when designing/workinng with an OLTP system as data integrity is of high priority.
`Denormalization`: the concept of denormalization helps to speed up data retrieval from a database. However, due to data silos, it gives room for redundancy and data integrity is compromised. This concept is typically applied on OLAP systems where read is extremely heavy.
- `Incrementality`: the concept of determining what update pattern data is going to adopt. Is it `INSERT`, `OVERWRITE` or `UPSERT`.

## Data Orchestration
Data orchestration is the sequential steps of executing the workflows(tasks) in an ETL/ELT pipeline facilitated by automation.
### Benefits of orchestrators
- Workflow management: they ensure that tasks are executed in the right order. They help in defining, scheduling and managing workflows.
- Automation: is crucial to data engineering processes, and orchestrators help to achieve this for repetitive tasks.
- Monitoring and alerting: they have features that can trigger an alert should a task fail or delay.
- Resource optimization: environments with limiteddd cost and resourcce benefit from this feature of orchestrators anchoring where and when tasks run.
- Observability and debugging: this is achieved by the incorporation of visual interface for logs, workflow graph, and other trounbleshooting tools.
- Compliance and audit: helpful for data governance and regulation.

### DAG
`Directed Acyclic Graph` is a graph of workflow execution where tasks are represented as nodes and dependencies are the edges. `Directed` means the task execution follow an order, while `Acyclic` means that we cannot cycle back to an executed task in the same workflow/pipeline.

### Cosiderations before choosing Orchestrator
- Scalability: considering if the tasks would be executed vertically(more parallel tasks) or horizontally(more compute). Scalabity is more of the orchestrator's ability to handle complex logics and dependencies than compute.
- Code configuration and reusability: basically ability to reuse tasks in a workflow; writing functions for code blocks that need to be executed more than once.
- Connection: how it might be more logical to choose an orchestrator on the same platform that hosts a significant portion of organization's workflows.
- Support: community support for troubleshooting and debugging. Updates and tool maturity.
- Observability: ability to have an insight into what is really happening under the hood of running pipelines, what is the provision put in place should in a case a job is delayed or even failed.

## Best practices for choosing orchestrator
- Backfill: ability to backfill, that is run missed executions from the start date defined, hence creating historical data.
- Idempotence: consistency and reusability.
- Conditional logic: when is it likely for this pipeline to break and how frequent? What happens if it does fail.
- Concurrency: employing this mode of execution when it's likely to consume a lot of time by executing in non-parallel mode.
- Fast feedback loops: the type if failure occurrs in, it can swiftly give a feedback.


## Pipeline issues and Troubleshooting

### Maintainability
Let's talk about maintainability of pipelines.
Maintainability is just the name implies, the ability to maintain what you've engineered. This is a highly important topic as it ties directly to scaling a system. It is safe to say that good maintainance of your system will save one's team from incurring unreasonable costs; either directly or indirectly.

- Direct cost: is the obvious cost tied to finance. When a system is built with little to no consideration for maintainance, it could lead to slow runs and delivery of data.
- Indirect cost: a typical example of indirect cost an engineering team could incur is time and energy. You can liken this to being busy without being productive. When a system keeps failing or breaking, more time that could be spent on working on new things would be invested in fixing and repairing an `unhealthy` pipeline. Spending more work hours, frequently, fixing a python function or DAG could be a sign of a shabbily built system in the first place.


### Scability


---
**
---
reverse ETL: ingesting transformed data from data warehouse to an external tool 

latency: time it takes for generated in the source to move to destination.

elt/etl

3 V's in data pipeline: Velocity, Variety, Volume

build trust as a DE: ensuring to deliver quality data that meets business needs, always.

## Managing cost as a DE
![alt text](image-3.png)





