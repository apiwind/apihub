<!-- Generator: Widdershins v4.0.1 -->

<h1 id="validect-email-verification">Validect - Email Verification v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Verify existence of specified email address using Validect API  

Base URLs:

* <a href="validect-email-verification-v1.p.rapidapi.com">validect-email-verification-v1.p.rapidapi.com</a>

<h1 id="validect-email-verification-default">Default</h1>

## get__v1_verify

> Code samples

```shell
# You can also use wget
curl -X GET validect-email-verification-v1.p.rapidapi.com/v1/verify?email=type,string \
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

r = requests.get('validect-email-verification-v1.p.rapidapi.com/v1/verify', params={
  'email': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /v1/verify`

*Verify email address. Possible verification statuses:valid - email address has been accepted by the mail server (safe to send).invalid - email address is invalid, various reasons possible, see below (do not send).accept_all - mail server accepts any email address (not recommended to send).unknown - unable to verify email address (not recommended to send).Possible status reasons:accepted_email - email address has been accepted by the mail server.rejected_email - email address has been rejected by the mail server.invalid_syntax - syntax of the email address is invalid according to RFC.invalid_domain - domain name of the email address does not exist.no_mx_record - mx record for the domain does not exist.invalid_mx_record - mx record of the domain is invalid.dns_error - error occurred while performing dns resolving of the domain.smtp_error - error occurred while performing smtp validation.*

Verify email address. Possible verification statuses:valid - email address has been accepted by the mail server (safe to send).invalid - email address is invalid, various reasons possible, see below (do not send).accept_all - mail server accepts any email address (not recommended to send).unknown - unable to verify email address (not recommended to send).Possible status reasons:accepted_email - email address has been accepted by the mail server.rejected_email - email address has been rejected by the mail server.invalid_syntax - syntax of the email address is invalid according to RFC.invalid_domain - domain name of the email address does not exist.no_mx_record - mx record for the domain does not exist.invalid_mx_record - mx record of the domain is invalid.dns_error - error occurred while performing dns resolving of the domain.smtp_error - error occurred while performing smtp validation.

<h3 id="get__v1_verify-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|email|query|string|true|Email address to validate. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: validect-email-verification-v1.p.rapidapi.com. |

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
    "public": {
      "type": "boolean"
    },
    "reason": {
      "type": "string"
    },
    "role": {
      "type": "boolean"
    },
    "status": {
      "type": "string"
    },
    "user": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__v1_verify-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__v1_verify-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» disposable|boolean|false|none|none|
|» domain|string|false|none|none|
|» email|string|false|none|none|
|» public|boolean|false|none|none|
|» reason|string|false|none|none|
|» role|boolean|false|none|none|
|» status|string|false|none|none|
|» user|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

