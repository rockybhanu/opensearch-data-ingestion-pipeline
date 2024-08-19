# OpenSearch Query: Filtering Results Based on Multiple Criteria

This query demonstrates how to filter documents in an OpenSearch index based on multiple conditions, such as a greater-than comparison, an exact match, and an "IN" condition. The query not only filters the results but also counts the number of documents that satisfy these criteria.

## Query to Filter and Count Documents

```json
GET /crm_cdc.public.customer_records/_search
{
  "size": 0,
  "query": {
    "bool": {
      "must": [
        {
          "range": {
            "annual_income": {
              "gt": 6000000
            }
          }
        },
        {
          "term": {
            "account_status.keyword": "Suspended"
          }
        },
        {
          "terms": {
            "country.keyword": ["UK", "India", "USA"]
          }
        }
      ]
    }
  },
  "aggs": {
    "filtered_count": {
      "value_count": {
        "field": "_id"
      }
    }
  }
}
```