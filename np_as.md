# Client NP-AS
Executive Summary
Nordic Peaks AS is a rapidly growing sustainable outdoor apparel and e-commerce company with headquarters in Oslo, Norway. Operations span across Europe and warehouses in Bergen and Trondheim. As the business has scaled, its data infrastructure has remained heavily dependent on four large, manually maintained Google Sheets covering Finance, Marketing, Supply Chain, and Customer Growth.
This siloed data environment has created significant operational and analytical challenges. Critical business information is isolated across departmental silos, making it difficult to reconcile data, identify cross-functional relationships, and make timely decisions. Marketing campaigns may continue to promote products that are out of stock, leadership lacks timely visibility into product-level profitability, and the data team spends approximately 15 hours each week manually extracting and reconciling spreadsheet data. The growing size of these spreadsheets also introduces performance, reliability, data integrity, and historical traceability concerns.
Nordic Peaks needs Federated Engineers to build the pipeline that moves their critical business data from fragile spreadsheets into a robust cloud object storage environment, ensuring the company stops flying blind. 
The primary outcome of this project is not a dashboard or reporting solution, but a reliable and scalable data ingestion and storage foundation. By centralizing the organization's Finance, Marketing, Supply Chain, and Growth data in S3, Nordic Peaks will be positioned to progressively eliminate data silos and enable future cross-functional analysis, including use cases such as real-time net margin analysis and marketing performance relative to product availability.

Business Problem
The "Silo" Problem
Nordic Peaks AS has grown rapidly from a local Norwegian brand to a mid-sized international retailer. However, their data infrastructure has not kept pace with their revenue. The entire company runs on four massive, disconnected Google Sheets that are managed manually by department heads.
These four critical data sources act as isolated islands:
The Finance Sheet ("The Ledger"): Owned by the CFO. Contains daily revenue, operational expenses (OpEx), currency exchange rates (NOK/EUR/USD), and tax obligations. It is manually updated once a month.
The Marketing Sheet ("Ad Spend Tracker"): Owned by the CMO. Tracks daily ad spend across Meta, Google Ads, and TikTok, along with campaign performance metrics (CTR, CPC, ROAS). This sheet is updated weekly by agencies.
The Supply Chain Sheet ("Inventory Master"): Owned by the Logistics Lead. Tracks SKU-level inventory counts across the Bergen and Trondheim warehouses, supplier lead times from manufacturers in Portugal, and shipping costs.
The Growth Sheet ("User Cohorts"): Owned by the Product Team. Tracks new user signups, website traffic sources, customer retention rates, and churn metrics.
Proposed Architecture


Project Objectives
Automate ingestion from all four Google Sheets.
Centralize source data in AWS S3.
Eliminate manual CSV extraction.
Preserve raw/source data for traceability.
Establish a scalable storage structure for future warehousing.
Implement appropriate security and access controls

Data Lake Design
raw layer
finance
marketing
growth
supply chain
staging layer
finance
marketing
growth
supply chain



Cost





S3 Standard - General purpose storage for any type of data, typically used for frequently accessed data


First 50 TB / Month
$0.023 per GB
Next 450 TB / Month
$0.022 per GB
Over 500 TB / Month
$0.021 per GB



The cost of storage to execute the first phase of this client’s project is at an estimation of less than $1 per month given their data size.
Authentication to Google Sheets API is free.
Federated Engineers will not be incurring an additional cost of setting up Airflow from the start due to an existing provision.
Implementation tasks
Setup authentication to google sheets API
Setup data lake infrastructure on AWS S3 with terraform
Authenticate IAM role for airflow to write to S3
Setup airflow parallel tasks locally
Consolidate ingestion of sources
Deploy to production
