<!-- Generator: Widdershins v4.0.1 -->

<h1 id="google-keyword-insight">Google Keyword Insight v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

“Google Keyword Insights API” – Your solution for dynamic keyword suggestions and metrics. Harness the power of Google Search to access real-time trends, competition data, and actionable insights. Seamlessly integrate for efficient, data-driven decision-making. For any queries contact us at: info@keyinsight.pro  

Base URLs:

* <a href="google-keyword-insight1.p.rapidapi.com">google-keyword-insight1.p.rapidapi.com</a>

<h1 id="google-keyword-insight-default">Default</h1>

## get__globalkey

> Code samples

```shell
# You can also use wget
curl -X GET google-keyword-insight1.p.rapidapi.com/globalkey \
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

r = requests.get('google-keyword-insight1.p.rapidapi.com/globalkey', headers = headers)

print(r.json())

```

`GET /globalkey`

*Retrieve global keyword suggestions and metrics by providing a keyword. Parameters: keyword (required): The target keyword for which you want global suggestions. lang (required): Two digit code for language.. *

Retrieve global keyword suggestions and metrics by providing a keyword. Parameters: keyword (required): The target keyword for which you want global suggestions. lang (required): Two digit code for language.. 

<h3 id="get__globalkey-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|keyword|query|string|false|Eg, Email Marketing. |
|lang|query|string|false|Eg, en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: google-keyword-insight1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__globalkey-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__globalkey-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__globalurl

> Code samples

```shell
# You can also use wget
curl -X GET google-keyword-insight1.p.rapidapi.com/globalurl \
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

r = requests.get('google-keyword-insight1.p.rapidapi.com/globalurl', headers = headers)

print(r.json())

```

`GET /globalurl`

*Fetch global keyword suggestions and metrics based on a provided URL. Parameters: url (required): The URL for which you want global keyword suggestions. lang (required): Two digit code for language.. *

Fetch global keyword suggestions and metrics based on a provided URL. Parameters: url (required): The URL for which you want global keyword suggestions. lang (required): Two digit code for language.. 

<h3 id="get__globalurl-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|url|query|string|false|Eg, rapidapi.com. |
|lang|query|string|false|Eg, en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: google-keyword-insight1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__globalurl-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__globalurl-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__keysuggest

> Code samples

```shell
# You can also use wget
curl -X GET google-keyword-insight1.p.rapidapi.com/keysuggest?keyword=type,string&location=type,string&lang=type,string \
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

r = requests.get('google-keyword-insight1.p.rapidapi.com/keysuggest', params={
  'keyword': {
  "type": "string"
},  'location': {
  "type": "string"
},  'lang': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /keysuggest`

*Get keyword suggestions and related metrics by providing a specific keyword and location. Parameters: keyword (required): The target keyword for which you want suggestions. location (required): The location or region to refine keyword suggestions.. *

Get keyword suggestions and related metrics by providing a specific keyword and location. Parameters: keyword (required): The target keyword for which you want suggestions. location (required): The location or region to refine keyword suggestions.. 

<h3 id="get__keysuggest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|keyword|query|string|true|Eg, Email Marketing. |
|location|query|string|true|Eg, US. |
|lang|query|string|true|Eg, en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: google-keyword-insight1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__keysuggest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__keysuggest-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__urlkeysuggest

> Code samples

```shell
# You can also use wget
curl -X GET google-keyword-insight1.p.rapidapi.com/urlkeysuggest?url=type,string&location=type,string&lang=type,string \
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

r = requests.get('google-keyword-insight1.p.rapidapi.com/urlkeysuggest', params={
  'url': {
  "type": "string"
},  'location': {
  "type": "string"
},  'lang': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /urlkeysuggest`

*Receive keyword suggestions and metrics based on a given URL and location. Parameters: url (required): The URL for which you want keyword suggestions. location (required): The location or region to refine keyword suggestions.. *

Receive keyword suggestions and metrics based on a given URL and location. Parameters: url (required): The URL for which you want keyword suggestions. location (required): The location or region to refine keyword suggestions.. 

<h3 id="get__urlkeysuggest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: google-keyword-insight1.p.rapidapi.com. |
|url|query|string|true|Eg: rapidapi.com. |
|location|query|string|true|Eg: US. |
|lang|query|string|true|Eg: en. |

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__urlkeysuggest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__urlkeysuggest-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

