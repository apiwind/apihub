<!-- Generator: Widdershins v4.0.1 -->

<h1 id="youtube-search-results">YouTube Search Results v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Fetch the YouTube Search Results and the information for each item for a specific search term, without any limits! You can find out more about the API and its usage here: https://userlip.github.io/Docs/#/youtube-search/requests  

Base URLs:

* <a href="youtube-search-results.p.rapidapi.com">youtube-search-results.p.rapidapi.com</a>

<h1 id="youtube-search-results-default">Default</h1>

## get__youtube-search_

> Code samples

```shell
# You can also use wget
curl -X GET youtube-search-results.p.rapidapi.com/youtube-search/ \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('youtube-search-results.p.rapidapi.com/youtube-search/', headers = headers)

print(r.json())

```

`GET /youtube-search/`

*Get all the YouTube Search Results Items and their Information! No limits and no Google API Key needed!. *

Get all the YouTube Search Results Items and their Information! No limits and no Google API Key needed!. 

<h3 id="get__youtube-search_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|next|query|string|false|Leave empty if you want the results from the first page. Use the value from [nextpageRef] from the previous request (for example first page) to get the next page (for example 2nd page). MUST BE URL ENCODED. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: youtube-search-results.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "currentRef": {
      "type": "string"
    },
    "filters": {
      "items": {
        "properties": {
          "active": {
            "type": "boolean"
          },
          "name": {
            "type": "string"
          },
          "ref": {
            "type": "string"
          }
        },
        "type": "object"
      },
      "type": "array"
    },
    "items": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "nextpageRef": {
      "type": "string"
    },
    "query": {
      "type": "string"
    },
    "results": {
      "type": "integer"
    },
    "status": {
      "type": "boolean"
    }
  },
  "type": "object"
}
```

<h3 id="get__youtube-search_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__youtube-search_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» currentRef|string|false|none|none|
|» filters|[object]|false|none|none|
|»» active|boolean|false|none|none|
|»» name|string|false|none|none|
|»» ref|string|false|none|none|
|» items|[object]|false|none|none|
|» nextpageRef|string|false|none|none|
|» query|string|false|none|none|
|» results|integer|false|none|none|
|» status|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

