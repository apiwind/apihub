<!-- Generator: Widdershins v4.0.1 -->

<h1 id="email-finder">Email Finder v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Find The Email Address of a Professional - e.g. John Doe @ company.com on the Web. Use this Super-Fast and Simple API to find the email address of a professional by full name (John Doe) and email domain (@company.com) as found on the web. Chat with us live on Discord: https://discord.gg/wxJxGsZgha.  

Base URLs:

* <a href="email-finder4.p.rapidapi.com">email-finder4.p.rapidapi.com</a>

<h1 id="email-finder-default">Default</h1>

## get__find-emails

> Code samples

```shell
# You can also use wget
curl -X GET email-finder4.p.rapidapi.com/find-emails?name=type,string&email_domain=type,string \
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

r = requests.get('email-finder4.p.rapidapi.com/find-emails', params={
  'name': {
  "type": "string"
},  'email_domain': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /find-emails`

*Find the company emails of a professional by full name (John Doe) and email domain (@company.com). *

Find the company emails of a professional by full name (John Doe) and email domain (@company.com). 

<h3 id="get__find-emails-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|name|query|string|true|The name of the person/professional to find. We recommend using the full name of the person for more accurate results, eg, Bill Gates. |
|email_domain|query|string|true|The email domain of the company or person to search for, eg, microsoft.com. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: email-finder4.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "properties": {
          "email": {
            "type": "string"
          },
          "sources": {
            "items": {
              "type": "string"
            },
            "type": "array"
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

<h3 id="get__find-emails-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__find-emails-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|»» email|string|false|none|none|
|»» sources|[string]|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

