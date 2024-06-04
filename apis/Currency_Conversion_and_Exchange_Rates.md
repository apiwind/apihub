<!-- Generator: Widdershins v4.0.1 -->

<h1 id="currency-conversion-and-exchange-rates">Currency Conversion and Exchange Rates v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

The Currency Conversion and Exchange Rates API provides quick and easy access to currency conversion. Implement this into your application to do localized currency, exchange rates, and more!   

Base URLs:

* <a href="currency-conversion-and-exchange-rates.p.rapidapi.com">currency-conversion-and-exchange-rates.p.rapidapi.com</a>

<h1 id="currency-conversion-and-exchange-rates-default">Default</h1>

## get__convert

> Code samples

```shell
# You can also use wget
curl -X GET currency-conversion-and-exchange-rates.p.rapidapi.com/convert \
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

r = requests.get('currency-conversion-and-exchange-rates.p.rapidapi.com/convert', headers = headers)

print(r.json())

```

`GET /convert`

*In addition to providing converstion rates, our API provides a dedicated endpoint to easily do conversion on a specific amount of the currency.. *

In addition to providing converstion rates, our API provides a dedicated endpoint to easily do conversion on a specific amount of the currency.. 

<h3 id="get__convert-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|path|string|true|The three-letter currency code of the currency you would like to convert from.. |
|to|path|string|true|The three-letter currency code of the currency you would like to convert to.. |
|amount|path|string|true|The amount to be converted.. |
|date|query|string|false|Optionally, provide a specific date (format YYYY-MM-DD) to use historical rates for this conversion.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: currency-conversion-and-exchange-rates.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "date": {
      "type": "string"
    },
    "info": {
      "type": "object"
    },
    "query": {
      "type": "object"
    },
    "result": {
      "type": "number"
    },
    "success": {
      "type": "boolean"
    }
  },
  "type": "object"
}
```

<h3 id="get__convert-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__convert-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» date|string|false|none|none|
|» info|object|false|none|none|
|» query|object|false|none|none|
|» result|number|false|none|none|
|» success|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__latest

> Code samples

```shell
# You can also use wget
curl -X GET currency-conversion-and-exchange-rates.p.rapidapi.com/latest \
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

r = requests.get('currency-conversion-and-exchange-rates.p.rapidapi.com/latest', headers = headers)

print(r.json())

```

`GET /latest`

*Retrieve the latest exchange rate data. Refresh rate will depend on your subscription: updated every 60 minutes, every 10 minutes or every 60 seconds.. *

Retrieve the latest exchange rate data. Refresh rate will depend on your subscription: updated every 60 minutes, every 10 minutes or every 60 seconds.. 

<h3 id="get__latest-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|from|query|string|false|Three-letter currency code of the currency would would like to convert from. This currency will be converted into the code of the currency provided in the to parameter. |
|to|query|string|false|A comma-separated list of currency codes to convert the from parameter into.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: currency-conversion-and-exchange-rates.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "base": {
      "type": "string"
    },
    "date": {
      "type": "string"
    },
    "rates": {
      "type": "object"
    },
    "success": {
      "type": "boolean"
    },
    "timestamp": {
      "type": "number"
    }
  },
  "type": "object"
}
```

<h3 id="get__latest-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__latest-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» base|string|false|none|none|
|» date|string|false|none|none|
|» rates|object|false|none|none|
|» success|boolean|false|none|none|
|» timestamp|number|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__symbols

> Code samples

```shell
# You can also use wget
curl -X GET currency-conversion-and-exchange-rates.p.rapidapi.com/symbols \
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

r = requests.get('currency-conversion-and-exchange-rates.p.rapidapi.com/symbols', headers = headers)

print(r.json())

```

`GET /symbols`

*Retrieve a list of all currently available currency symbols. *

Retrieve a list of all currently available currency symbols. 

<h3 id="get__symbols-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: currency-conversion-and-exchange-rates.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "success": {
      "type": "boolean"
    },
    "symbols": {
      "type": "object"
    }
  },
  "type": "object"
}
```

<h3 id="get__symbols-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__symbols-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» success|boolean|false|none|none|
|» symbols|object|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__timeseries

> Code samples

```shell
# You can also use wget
curl -X GET currency-conversion-and-exchange-rates.p.rapidapi.com/timeseries?start_date=type,string&end_date=type,string \
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

r = requests.get('currency-conversion-and-exchange-rates.p.rapidapi.com/timeseries', params={
  'start_date': {
  "type": "string"
},  'end_date': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /timeseries`

*Retrieve historical rates between two specified dates.. *

Retrieve historical rates between two specified dates.. 

<h3 id="get__timeseries-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|start_date|query|string|true|Format "2019-01-01". |
|end_date|query|string|true|Format "2019-01-01". |
|from|query|string|false|Three-letter currency code of the currency would would like to convert from. This currency will be converted into the code of the currency provided in the to parameter. |
|to|query|string|false|A comma-separated list of currency codes to convert the from parameter into.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: currency-conversion-and-exchange-rates.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "base": {
      "type": "string"
    },
    "end_date": {
      "type": "string"
    },
    "rates": {
      "type": "object"
    },
    "start_date": {
      "type": "string"
    },
    "success": {
      "type": "boolean"
    },
    "timeseries": {
      "type": "boolean"
    }
  },
  "type": "object"
}
```

<h3 id="get__timeseries-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__timeseries-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» base|string|false|none|none|
|» end_date|string|false|none|none|
|» rates|object|false|none|none|
|» start_date|string|false|none|none|
|» success|boolean|false|none|none|
|» timeseries|boolean|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__{date}

> Code samples

```shell
# You can also use wget
curl -X GET currency-conversion-and-exchange-rates.p.rapidapi.com/{date} \
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

r = requests.get('currency-conversion-and-exchange-rates.p.rapidapi.com/{date}', headers = headers)

print(r.json())

```

`GET /{date}`

*Retrieve historical exchange rate data. Data is available for most currencies all the way back to the year of 1999.. *

Retrieve historical exchange rate data. Data is available for most currencies all the way back to the year of 1999.. 

<h3 id="get__{date}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|date|path|string|true|The date to retrieve the historical exchange rates from.. |
|from|query|string|false|Three-letter currency code of the currency would would like to convert from. This currency will be converted into the code of the currency provided in the to parameter. |
|to|query|string|false|A comma-separated list of currency codes to convert the from parameter into.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: currency-conversion-and-exchange-rates.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "base": {
      "type": "string"
    },
    "date": {
      "type": "string"
    },
    "historical": {
      "type": "boolean"
    },
    "rates": {
      "type": "object"
    },
    "success": {
      "type": "boolean"
    },
    "timestamp": {
      "type": "number"
    }
  },
  "type": "object"
}
```

<h3 id="get__{date}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__{date}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» base|string|false|none|none|
|» date|string|false|none|none|
|» historical|boolean|false|none|none|
|» rates|object|false|none|none|
|» success|boolean|false|none|none|
|» timestamp|number|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

