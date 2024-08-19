# OpenSearch Query: Aggregation for Unique Data Points

This query is designed to retrieve all unique values from specified fields within the `crm_cdc.public.customer_records` index in OpenSearch. By using the `terms` aggregation, the query identifies and counts the unique occurrences of each value in the selected fields. This is useful for understanding the distinct data points available in those fields.

## Query

```json
GET /crm_cdc.public.customer_records/_search
{
  "size": 0,
  "aggs": {
    "unique_countries": {
      "terms": {
        "field": "country.keyword",
        "size": 1000
      }
    },
    "unique_lock_reasons": {
      "terms": {
        "field": "account_lock_reason.keyword",
        "size": 1000
      }
    }
  }
}
```