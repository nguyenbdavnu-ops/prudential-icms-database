# Improving Operational Efficiency with Database Applications – Prudential Vietnam

This repository contains the Insurance Contract Management System (ICMS) project designed to streamline insurance operations for Prudential Vietnam.

## Project overview

- Designed and implemented a normalized (3NF) Insurance Contract Management System to streamline contract, claim, and payment data pipelines.
- Developed an ERD and relational schema for 11 interconnected entities.
- Wrote and optimized 11 SQL business queries using `SELECT`, `JOIN`, `GROUP BY`, and subqueries to extract KPI performance and revenue insights.
- Identified 22% data duplication issues and proposed data-driven solutions to reduce claim processing time by up to 80%, improving operational efficiency.

## Repository structure

```text
prudential-icms-database/
│
├── README.md              ← Project summary and structure
├── schema/
│   └── create_tables.sql  ← Full CREATE TABLE DDL
├── data/
│   └── insert_data.sql    ← INSERT statements for sample data
├── queries/
│   └── business_queries.sql ← 11 business analysis SQL queries
├── docs/
│   ├── ERD.png            ← Entity-relationship diagram
│   └── relation_schema.png ← Relation schema diagram placeholder
```

## Tech Stack

- **Database**: SQL (MySQL / BigQuery)
- **Concepts**: Entity-Relationship Diagram, 3NF Normalization, Relational Schema
- **Tools**: draw.io (ERD design), VS Code

## Key Results

| Metric | Before ICMS | After ICMS |
|--------|------------|------------|
| Data duplication | 22% | ~0% |
| Claim processing time | 72 hours | ~14 hours (↓80%) |
| Data accuracy | 85% | 99%+ |

## How to use

1. Run `schema/create_tables.sql` to create the database schema.
2. Load sample data from `data/insert_data.sql`.
3. Execute the queries in `queries/business_queries.sql` to produce business insights.
4. Replace `docs/ERD.png` and `docs/relation_schema.png` with exported diagrams from your modeling tool.
