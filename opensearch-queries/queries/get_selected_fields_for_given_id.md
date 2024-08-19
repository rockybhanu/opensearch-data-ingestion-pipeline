# OpenSearch Query: Retrieving Specific Fields from a Document by ID

In this example, we demonstrate how to retrieve specific fields from a document in an OpenSearch index using its unique ID. This approach is useful when you need to access only a subset of a document's data, rather than fetching the entire document.

## Query to Retrieve Selected Fields

```json
GET /crm_cdc.public.customer_records/_search
{
  "_source": [
    "average_shipping_time",
    "country",
    "email",
    "id",
    "account_manager_id"
  ],
  "query": {
    "term": {
      "_id": "Struct{id=4385071f-9cbc-4fdb-a140-30a0bb337b0d}"
    }
  }
}
```