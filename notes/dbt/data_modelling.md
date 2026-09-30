
## Data Modelling

- blueprint for data construction in db
- well optimized => cost saving

    ### Phases of data modelling
    - Conceptual
         An overview of what needs to be or should be collected.
         - Example: for an online e-commerce store like Amazon
         - we need user data table (entity and what columns we need)
         - vendors entity and details (business name, address, registration number)
         - review entity

    - Logical
        How do/will the tables relate to each other?
        - If one user buys from many vendors, how ill it be tsored?
        etc...

    - Physical
        How should the data be stored.
        - What should be tables and what should be views?
        - transform the previous phases to database languages

    ### The Gold Layer
    - Where mmodelling is done
    - Always referencing the silver layer
    - When joins are done to build dimensional models, the master table must always be the table to join on;  `left join` on a master table from the silver is best practice to preserve truthfulness instead of an `inner join`.
        
        ### Surrogate key
        - This is a system/warehouse generated unique identifier attachedd to *a record/row* of a table. 
        - It is used to track changes in a way to a record's original source_id. e.g if a payment's status changed from `pending` to `confirmed`, in order to preserve the record and not overwrite the primary `customer_id`, a `surrogate_key` monitors that and assigns a new key to that record because it is different although for the same customer.
        - Tyoically in cases of building `SCD Type-2`
        - The suffix is always `_key`.
        - Could be defined with `DDL-based generation` or ``SQL based window functions` like `ROW_NUMBER()`.
        - 



## Views
- useful to not re-compute table queries.
- snapshot of a table


## Normalization


## Denormalization

