<!-- Generator: Widdershins v4.0.1 -->

<h1 id="real-time-news-data">Real-Time News Data v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Get Top News Globally, per Topic or Search Local News from Google News in Real-Time. Use this API to get the top news globally or per topic and search for news by query and geographic area. Powered by Google News. Chat with us live on Discord: https://discord.gg/wxJxGsZgha.  

Base URLs:

* <a href="real-time-news-data.p.rapidapi.com">real-time-news-data.p.rapidapi.com</a>

<h1 id="real-time-news-data-default">Default</h1>

## get__language-list

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/language-list?country=type,string \
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

r = requests.get('real-time-news-data.p.rapidapi.com/language-list', params={
  'country': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /language-list`

*Get valid languages for a country code, to be used with all other APIs.. *

Get valid languages for a country code, to be used with all other APIs.. 

<h3 id="get__language-list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|query|string|true|Country code of the country to get languages for. See all available country codes.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "properties": {
          "lang": {
            "type": "string"
          },
          "name": {
            "type": "string"
          }
        },
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__language-list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__language-list-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|»» lang|string|false|none|none|
|»» name|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__local-headlines

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/local-headlines?query=type,string \
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

r = requests.get('real-time-news-data.p.rapidapi.com/local-headlines', params={
  'query': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /local-headlines`

*Get local, geo based headlines. *

Get local, geo based headlines. 

<h3 id="get__local-headlines-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|query|query|string|true|Area, city or country to fetch news for (e.g. London).. |
|country|query|string|false|US. OPTIONAL. Country code. See all available country codes. Default: US. The language to use for the results, specified as a 2-letter language code - see ISO 639-1 alpha-2. Default: en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__local-headlines-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__local-headlines-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__search

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/search?query=type,string \
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

r = requests.get('real-time-news-data.p.rapidapi.com/search', params={
  'query': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /search`

*Search news articles by query with an option to limit the results to a specific time range.. *

Search news articles by query with an option to limit the results to a specific time range.. 

<h3 id="get__search-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|query|query|string|true|Search query for which to get news.. |
|country|query|string|false|Country code. See all available country codes. Default: US. |
|lang|query|string|false|The language to use for the results, specified as a 2-letter language code - see ISO 639-1 alpha-2. Default: en. |
|time_published|query|string|false|OPTIONAL. Find news articles published in a specific time range. Default: anytime. Domain of the source from which to return news articles (e.g. cnn.com).. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__search-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__search-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__top-headlines

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/top-headlines \
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

r = requests.get('real-time-news-data.p.rapidapi.com/top-headlines', headers = headers)

print(r.json())

```

`GET /top-headlines`

*Get the latest news headlines/top stories for a country.. *

Get the latest news headlines/top stories for a country.. 

<h3 id="get__top-headlines-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|country|query|string|false|US. OPTIONAL. Country code. See all available country codes. Default: US. The language to use for the results, specified as a 2-letter language code - see ISO 639-1 alpha-2. Default: en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__top-headlines-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__top-headlines-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__topic-headlines

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/topic-headlines?topic=type,string \
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

r = requests.get('real-time-news-data.p.rapidapi.com/topic-headlines', params={
  'topic': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /topic-headlines`

*Get the latest news headlines for a topic.. *

Get the latest news headlines for a topic.. 

<h3 id="get__topic-headlines-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|topic|query|string|true|Topic for which to get news headlines. Available topic: WORLD, NATIONAL, BUSINESS, TECHNOLOGY, ENTERTAINMENT, SPORTS, SCIENCE, HEALTH. In addition, topic IDs are also accepted and can be taken from a News topic URL as it appears after the topics/ path part (e.g. Football Topic - /topics/CAAqJQgKIh9DQkFTRVFvSUwyMHZNREoyZURRU0JXVnVMVWRDS0FBUAE). |
|country|query|string|false|US. OPTIONAL. Country code. See all available country codes. Default: US. The language to use for the results, specified as a 2-letter language code - see ISO 639-1 alpha-2. Default: en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__topic-headlines-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__topic-headlines-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__topic-news-by-section

> Code samples

```shell
# You can also use wget
curl -X GET real-time-news-data.p.rapidapi.com/topic-news-by-section?topic=type,string&section=type,string \
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

r = requests.get('real-time-news-data.p.rapidapi.com/topic-news-by-section', params={
  'topic': {
  "type": "string"
},  'section': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /topic-news-by-section`

*Get topic news article in a specific section.. *

Get topic news article in a specific section.. 

<h3 id="get__topic-news-by-section-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|topic|query|string|true|Topic for which to get news headlines. Available topic: WORLD, NATIONAL, BUSINESS, TECHNOLOGY, ENTERTAINMENT, SPORTS, SCIENCE, HEALTH. In addition, topic IDs are also accepted and can be taken from a News topic URL as it appears after the topics/ path part (e.g. Football Topic - /topics/CAAqJQgKIh9DQkFTRVFvSUwyMHZNREoyZURRU0JXVnVMVWRDS0FBUAE). |
|section|query|string|true|Section, eg: CAQiW0NCQVNQZ29JTDIwdk1EZGpNWFlTQW1WdUdnSlZVeUlQQ0FRYUN3b0pMMjB2TURKdFpqRnVLaGtLRndvVFIwRkVSMFZVWDFORlExUkpUMDVmVGtGTlJTQUJLQUEqKggAKiYICiIgQ0JBU0Vnb0lMMjB2TURkak1YWVNBbVZ1R2dKVlV5Z0FQAVAB. |
|country|query|string|false|US. OPTIONAL. Country code. See all available country codes. Default: US. The language to use for the results, specified as a 2-letter language code - see ISO 639-1 alpha-2. Default: en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-news-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__topic-news-by-section-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__topic-news-by-section-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

