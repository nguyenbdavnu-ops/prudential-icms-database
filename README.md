# prudential-icms-database

Project skeleton for the Prudential ICMS database.

Repository layout
```
prudential-icms-database/
│
├── README.md              ← Quan trọng nhất!
├── schema/
│   └── create_tables.sql  ← Toàn bộ CREATE TABLE
├── data/
│   └── insert_data.sql    ← INSERT VALUES
├── queries/
│   └── business_queries.sql ← 11 business questions
├── docs/
│   ├── ERD.png            ← Chụp/export ảnh ERD
│   └── relation_schema.png
```

How to use
- Put all CREATE TABLE statements into `schema/create_tables.sql`.
- Put all INSERT statements (or COPY) into `data/insert_data.sql`.
- Add the 11 business query SQL statements to `queries/business_queries.sql`.
- Replace the placeholder images in `docs/` with exported ERD and relation schema images.

If you have a Word document with schema or data, copy the SQL parts into the files above. 