# OpenSearch Query: Paginated Results with Filters

This query retrieves paginated results from the `crm_cdc.public.customer_records` index with filters applied. It selects documents where `annual_income` is greater than `6000000`, `account_status` is `Suspended`, and `country` is either `UK`, `India`, or `USA`.

## Query for the First Page

```json
GET /crm_cdc.public.customer_records/_search
{
  "_source": [
    "annual_income",
    "account_status",
    "country",
    "email",
    "id"
  ],
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
  "from": 0, 
  "size": 100
}
```

## Query for the Second Page
## To get the next page of results, update the from parameter to 100:

```json
GET /crm_cdc.public.customer_records/_search
{
  "_source": [
    "annual_income",
    "account_status",
    "country",
    "email",
    "id"
  ],
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
  "from": 100,  // Start at the 101st document
  "size": 100   // Retrieve 100 documents
}

```