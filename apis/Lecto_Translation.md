<!-- Generator: Widdershins v4.0.1 -->

<h1 id="lecto-translation">Lecto Translation v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Fast Neural Translation. Text/HTML/JSON. Protected keys. Multiple source texts and target languages in a single request. Free Translation API trial with paid plans as low as $0.3 per million characters. 90+ supported languages. For personalized integration support or private plans with higher quotas, contact support@lecto.ai or via Telegram @lectoai . Also available via our website with attractive Translation API pricing at https://dashboard.lecto.ai/pricing  

Base URLs:

* <a href="lecto-translation.p.rapidapi.com">lecto-translation.p.rapidapi.com</a>

<h1 id="lecto-translation-default">Default</h1>

## post__v1_detect_text

> Code samples

```shell
# You can also use wget
curl -X POST lecto-translation.p.rapidapi.com/v1/detect/text \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: [object Object]' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Accept-Encoding': {
  "type": "string"
},
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.post('lecto-translation.p.rapidapi.com/v1/detect/text', headers = headers)

print(r.json())

```

`POST /v1/detect/text`

*Send array of source texts in request body and receive JSON response with the detected language codes.. *

Send array of source texts in request body and receive JSON response with the detected language codes.. 

> Body parameter

```json
{
  "properties": {
    "texts": {
      "items": {
        "type": "string"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_detect_text-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Accept-Encoding|header|string|false|Eg: Accept-Encoding: gzip. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: lecto-translation.p.rapidapi.com. |
|body|body|object|false|none|
|» texts|body|[string]|false|none|

> Example responses

> 200 Response

```json
{
  "properties": {
    "detected_languages": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "original_characters": {
      "type": "integer"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_detect_text-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__v1_detect_text-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» detected_languages|[string]|false|none|none|
|» original_characters|integer|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__v1_translate_json

> Code samples

```shell
# You can also use wget
curl -X POST lecto-translation.p.rapidapi.com/v1/translate/json \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: [object Object]' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Accept-Encoding': {
  "type": "string"
},
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.post('lecto-translation.p.rapidapi.com/v1/translate/json', headers = headers)

print(r.json())

```

`POST /v1/translate/json`

*Translate JSON values from JSON formatted strings into multiple target languages, with protected keys feature available.. *

Translate JSON values from JSON formatted strings into multiple target languages, with protected keys feature available.. 

> Body parameter

```json
{
  "properties": {
    "from": {
      "type": "string"
    },
    "json": {
      "type": "string"
    },
    "protected_keys": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "to": {
      "items": {
        "type": "string"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_translate_json-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Accept-Encoding|header|string|false|Eg: Accept-Encoding: gzip. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: lecto-translation.p.rapidapi.com. |
|body|body|object|false|none|
|» from|body|string|false|none|
|» json|body|string|false|none|
|» protected_keys|body|[string]|false|none|
|» to|body|[string]|false|none|

> Example responses

> 200 Response

```json
{
  "properties": {
    "from": {
      "type": "string"
    },
    "protected_keys": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "translated_characters": {
      "type": "integer"
    },
    "translations": {
      "items": {
        "properties": {
          "to": {
            "type": "string"
          },
          "translated": {
            "items": {
              "type": "string"
            },
            "type": "array"
          }
        },
        "type": "object"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_translate_json-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__v1_translate_json-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» from|string|false|none|none|
|» protected_keys|[string]|false|none|none|
|» translated_characters|integer|false|none|none|
|» translations|[object]|false|none|none|
|»» to|string|false|none|none|
|»» translated|[string]|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__v1_translate_languages

> Code samples

```shell
# You can also use wget
curl -X GET lecto-translation.p.rapidapi.com/v1/translate/languages \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: [object Object]' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Accept-Encoding': {
  "type": "string"
},
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('lecto-translation.p.rapidapi.com/v1/translate/languages', headers = headers)

print(r.json())

```

`GET /v1/translate/languages`

*Get a list of supported languages for translation in ISO-639-1, ISO-639-2 or BCP-47 formats.. *

Get a list of supported languages for translation in ISO-639-1, ISO-639-2 or BCP-47 formats.. 

<h3 id="get__v1_translate_languages-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Accept-Encoding|header|string|false|Eg: gzip. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: lecto-translation.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "languages": {
      "items": {
        "properties": {
          "display_name": {
            "type": "string"
          },
          "language_code": {
            "type": "string"
          },
          "support_source": {
            "type": "boolean"
          },
          "support_target": {
            "type": "boolean"
          }
        },
        "type": "object"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="get__v1_translate_languages-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__v1_translate_languages-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» languages|[object]|false|none|none|
|»» display_name|string|false|none|none|
|»» language_code|string|false|none|none|
|»» support_source|boolean|false|none|none|
|»» support_target|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__v1_translate_text

> Code samples

```shell
# You can also use wget
curl -X POST lecto-translation.p.rapidapi.com/v1/translate/text \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Accept-Encoding: [object Object]' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Accept-Encoding': {
  "type": "string"
},
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.post('lecto-translation.p.rapidapi.com/v1/translate/text', headers = headers)

print(r.json())

```

`POST /v1/translate/text`

*Batch translate array of texts into multiple target languages.. *

Batch translate array of texts into multiple target languages.. 

> Body parameter

```json
{
  "properties": {
    "from": {
      "type": "string"
    },
    "texts": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "to": {
      "items": {
        "type": "string"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_translate_text-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Accept-Encoding|header|string|false|Eg: Accept-Encoding: gzip. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: lecto-translation.p.rapidapi.com. |
|body|body|object|false|none|
|» from|body|string|false|none|
|» texts|body|[string]|false|none|
|» to|body|[string]|false|none|

> Example responses

> 200 Response

```json
{
  "properties": {
    "from": {
      "type": "string"
    },
    "translated_characters": {
      "type": "integer"
    },
    "translations": {
      "items": {
        "properties": {
          "to": {
            "type": "string"
          },
          "translated": {
            "items": {
              "type": "string"
            },
            "type": "array"
          }
        },
        "type": "object"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__v1_translate_text-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__v1_translate_text-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» from|string|false|none|none|
|» translated_characters|integer|false|none|none|
|» translations|[object]|false|none|none|
|»» to|string|false|none|none|
|»» translated|[string]|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

