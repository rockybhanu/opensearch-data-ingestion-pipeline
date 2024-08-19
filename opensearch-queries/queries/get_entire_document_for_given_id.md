# OpenSearch Query: Retrieving an Entire Document by ID

In this example, we demonstrate how to retrieve an entire document from an OpenSearch index using its unique ID. This is particularly useful when you need to fetch all the fields and data associated with a specific document in your index.

## Query to Retrieve the Entire Document

```json
GET /crm_cdc.public.customer_records/_search
{
  "query": {
    "term": {
      "_id": "Struct{id=4385071f-9cbc-4fdb-a140-30a0bb337b0d}"
    }
  }
}
```