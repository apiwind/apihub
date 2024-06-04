<!-- Generator: Widdershins v4.0.1 -->

<h1 id="translate">Translate v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Easy and reliable Machine Translation and Language Detection   

Base URLs:

* <a href="translate287.p.rapidapi.com">translate287.p.rapidapi.com</a>

<h1 id="translate-default">Default</h1>

## get__detect_accurate

> Code samples

```shell
# You can also use wget
curl -X GET translate287.p.rapidapi.com/detect/accurate?text=type,string \
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

r = requests.get('translate287.p.rapidapi.com/detect/accurate', params={
  'text': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /detect/accurate`

*This endpoint will return the Language of the Text. *

This endpoint will return the Language of the Text. 

<h3 id="get__detect_accurate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|text|query|string|true|Title: Text. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "confidence": {
      "title": "Confidence",
      "type": "number"
    },
    "is_reliable": {
      "title": "Is Reliable",
      "type": "boolean"
    },
    "lang": {
      "title": "Lang",
      "type": "string"
    },
    "script": {
      "title": "Script",
      "type": "string"
    }
  },
  "required": [
    "lang",
    "confidence",
    "script",
    "is_reliable"
  ],
  "title": "WhatLang",
  "type": "object"
}
```

<h3 id="get__detect_accurate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__detect_accurate-responseschema">Response Schema</h3>

Status Code **200**

*WhatLang*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» confidence|number|true|none|none|
|» is_reliable|boolean|true|none|none|
|» lang|string|true|none|none|
|» script|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__detect_accurate

> Code samples

```shell
# You can also use wget
curl -X POST translate287.p.rapidapi.com/detect/accurate?text=type,string \
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

r = requests.post('translate287.p.rapidapi.com/detect/accurate', params={
  'text': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`POST /detect/accurate`

*This endpoint will return the Language of the Text. *

This endpoint will return the Language of the Text. 

<h3 id="post__detect_accurate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|text|query|string|true|Title: Text. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "confidence": {
      "title": "Confidence",
      "type": "number"
    },
    "is_reliable": {
      "title": "Is Reliable",
      "type": "boolean"
    },
    "lang": {
      "title": "Lang",
      "type": "string"
    },
    "script": {
      "title": "Script",
      "type": "string"
    }
  },
  "required": [
    "lang",
    "confidence",
    "script",
    "is_reliable"
  ],
  "title": "WhatLang",
  "type": "object"
}
```

<h3 id="post__detect_accurate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__detect_accurate-responseschema">Response Schema</h3>

Status Code **200**

*WhatLang*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» confidence|number|true|none|none|
|» is_reliable|boolean|true|none|none|
|» lang|string|true|none|none|
|» script|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__detect_fast

> Code samples

```shell
# You can also use wget
curl -X GET translate287.p.rapidapi.com/detect/fast?text=type,string \
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

r = requests.get('translate287.p.rapidapi.com/detect/fast', params={
  'text': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /detect/fast`

*This endpoint will return the Language of the Text. *

This endpoint will return the Language of the Text. 

<h3 id="get__detect_fast-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|text|query|string|true|Title: Text. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "confidence": {
      "title": "Confidence",
      "type": "number"
    },
    "is_reliable": {
      "title": "Is Reliable",
      "type": "boolean"
    },
    "lang": {
      "title": "Lang",
      "type": "string"
    },
    "script": {
      "title": "Script",
      "type": "string"
    }
  },
  "required": [
    "lang",
    "confidence",
    "script",
    "is_reliable"
  ],
  "title": "WhatLang",
  "type": "object"
}
```

<h3 id="get__detect_fast-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__detect_fast-responseschema">Response Schema</h3>

Status Code **200**

*WhatLang*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» confidence|number|true|none|none|
|» is_reliable|boolean|true|none|none|
|» lang|string|true|none|none|
|» script|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__detect_fast

> Code samples

```shell
# You can also use wget
curl -X POST translate287.p.rapidapi.com/detect/fast?text=type,string \
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

r = requests.post('translate287.p.rapidapi.com/detect/fast', params={
  'text': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`POST /detect/fast`

*This endpoint will return the Language of the Text. *

This endpoint will return the Language of the Text. 

<h3 id="post__detect_fast-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|text|query|string|true|Title: Text. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "confidence": {
      "title": "Confidence",
      "type": "number"
    },
    "is_reliable": {
      "title": "Is Reliable",
      "type": "boolean"
    },
    "lang": {
      "title": "Lang",
      "type": "string"
    },
    "script": {
      "title": "Script",
      "type": "string"
    }
  },
  "required": [
    "lang",
    "confidence",
    "script",
    "is_reliable"
  ],
  "title": "WhatLang",
  "type": "object"
}
```

<h3 id="post__detect_fast-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__detect_fast-responseschema">Response Schema</h3>

Status Code **200**

*WhatLang*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» confidence|number|true|none|none|
|» is_reliable|boolean|true|none|none|
|» lang|string|true|none|none|
|» script|string|true|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__translate_

> Code samples

```shell
# You can also use wget
curl -X GET translate287.p.rapidapi.com/translate/?dest=type,string&text=type,string \
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

r = requests.get('translate287.p.rapidapi.com/translate/', params={
  'dest': {
  "type": "string"
},  'text': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /translate/`

*Return Translated Text and the source language if it wasn't specified. *

Return Translated Text and the source language if it wasn't specified. 

<h3 id="get__translate_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|dest|query|string|true|Title: Dest|
|text|query|string|true|Title: Text|
|src|query|string|false|Title: Src, Default: auto. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "description": "Schema Class for Google Translate Result",
  "properties": {
    "destination_language": {
      "title": "Destination Language",
      "type": "string"
    },
    "original_language": {
      "title": "Original Language",
      "type": "string"
    },
    "original_text": {
      "title": "Original Text",
      "type": "string"
    },
    "translated_text": {
      "title": "Translated Text",
      "type": "string"
    }
  },
  "required": [
    "original_text"
  ],
  "title": "Google",
  "type": "object"
}
```

<h3 id="get__translate_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__translate_-responseschema">Response Schema</h3>

Status Code **200**

*Google*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» destination_language|string|false|none|none|
|» original_language|string|false|none|none|
|» original_text|string|true|none|none|
|» translated_text|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__translate_

> Code samples

```shell
# You can also use wget
curl -X POST translate287.p.rapidapi.com/translate/?text=type,string&dest=type,string \
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

r = requests.post('translate287.p.rapidapi.com/translate/', params={
  'text': {
  "type": "string"
},  'dest': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`POST /translate/`

*Return Translated Text and the source language if it wasn't specified. *

Return Translated Text and the source language if it wasn't specified. 

<h3 id="post__translate_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|text|query|string|true|Title: Text. |
|dest|query|string|true|Title: Dest. |
|src|query|string|false|Title: Src, Default: auto. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: translate287.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "destination_language": {
      "type": "string"
    },
    "original_language": {
      "type": "string"
    },
    "original_text": {
      "type": "string"
    },
    "translated_text": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="post__translate_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__translate_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» destination_language|string|false|none|none|
|» original_language|string|false|none|none|
|» original_text|string|false|none|none|
|» translated_text|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

