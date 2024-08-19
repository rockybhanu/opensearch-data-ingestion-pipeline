# OpenSearch Query: Paginated Results Sorted by `account_created_date`

This query retrieves paginated results from the `crm_cdc.public.customer_records` index, sorted by the `account_created_date` field in descending order. It is designed to fetch data in manageable pages, allowing for efficient navigation through large datasets.

## Query for the First Page of Results

```json
GET /crm_cdc.public.customer_records/_search
{
  "_source": [
    "email",
    "country",
    "account_created_date"
  ],
  "query": {
    "match_all": {}
  },
  "sort": [
    {
      "account_created_date": {
        "order": "desc"
      }
    }
  ],
  "from": 0, 
  "size": 100
}
