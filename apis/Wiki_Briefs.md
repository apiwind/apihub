<!-- Generator: Widdershins v4.0.1 -->

<h1 id="wiki-briefs">Wiki Briefs v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Briefs about anything you search. No need to read lengthy articles, we summarize. This API briefs about anything you search based on info from Wikipedia and WikiHow. Uses natural language processing (NLP) to summarize the Wiki articles to give short but important information. Also provides related items based on similarity score.  

Base URLs:

* <a href="wiki-briefs.p.rapidapi.com">wiki-briefs.p.rapidapi.com</a>

<h1 id="wiki-briefs-default">Default</h1>

## get__howto

> Code samples

```shell
# You can also use wget
curl -X GET wiki-briefs.p.rapidapi.com/howto?q=type,string \
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

r = requests.get('wiki-briefs.p.rapidapi.com/howto', params={
  'q': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /howto`

*Search any 'how-to' question on WikiHow and returns summarized methods and steps.. *

Search any 'how-to' question on WikiHow and returns summarized methods and steps.. 

<h3 id="get__howto-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|q|query|string|true|Any how-to question to ask. For example, 'find meaning in life', 'learn any language', 'play soccer', 'change an oil filter'…. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: wiki-briefs.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "key1": {
      "type": "string"
    },
    "key2": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__howto-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__howto-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» key1|string|false|none|none|
|» key2|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__search

> Code samples

```shell
# You can also use wget
curl -X GET wiki-briefs.p.rapidapi.com/search?q=type,string \
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

r = requests.get('wiki-briefs.p.rapidapi.com/search', params={
  'q': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /search`

*Search anything on Wikipedia and returns top K summarized information and similar items. Images and coordinates with map link are provided when available.. *

Search anything on Wikipedia and returns top K summarized information and similar items. Images and coordinates with map link are provided when available.. 

<h3 id="get__search-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|q|query|string|true|Query string, can be anything.. |
|topk|query|number|false|Return top k summarized information. Default to 5. Must be greater than 0.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: wiki-briefs.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "key1": {
      "type": "string"
    },
    "key2": {
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
|» key1|string|false|none|none|
|» key2|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

