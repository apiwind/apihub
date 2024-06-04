<!-- Generator: Widdershins v4.0.1 -->

<h1 id="easy-email-validation">Easy Email Validation v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Use this API to quickly and effectively validate an email addresses. This API runs the following checks: valid email format, mx Record, and disposable email.  Email Validation, E-mail Check Invalid or Disposable Domain, Email Verification, Email Address Validation.  

Base URLs:

* <a href="easy-email-validation.p.rapidapi.com">easy-email-validation.p.rapidapi.com</a>

<h1 id="easy-email-validation-default">Default</h1>

## get__validate

> Code samples

```shell
# You can also use wget
curl -X GET easy-email-validation.p.rapidapi.com/validate?email=type,string \
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

r = requests.get('easy-email-validation.p.rapidapi.com/validate', params={
  'email': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /validate`

*Validate an email. *

Validate an email. 

<h3 id="get__validate-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|email|query|string|true|email address. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: easy-email-validation.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "disposable": {
      "type": "boolean"
    },
    "domain": {
      "type": "string"
    },
    "email": {
      "type": "string"
    },
    "mxRecord": {
      "type": "boolean"
    },
    "valid": {
      "type": "boolean"
    }
  },
  "type": "object"
}
```

<h3 id="get__validate-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__validate-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» disposable|boolean|false|none|none|
|» domain|string|false|none|none|
|» email|string|false|none|none|
|» mxRecord|boolean|false|none|none|
|» valid|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

