<!-- Generator: Widdershins v4.0.1 -->

<h1 id="ip-geo-location">IP Geo Location v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

API returns location data such as country, city, latitude, longitude, timezone, asn, currency, security data for IPv4 and IPv6 addresses in JSON or XML formats.  IP geo location API gives the detailed information about IP location of your visitors. Data includes information about country, city, latitude and longitude, timezone, asn, currency and some security data. API supports IPv4 and IPv6 IP addresses. Response formats: json and xml.  

Base URLs:

* <a href="ip-geo-location.p.rapidapi.com">ip-geo-location.p.rapidapi.com</a>

<h1 id="ip-geo-location-default">Default</h1>

## get__ip_check

> Code samples

```shell
# You can also use wget
curl -X GET ip-geo-location.p.rapidapi.com/ip/check \
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

r = requests.get('ip-geo-location.p.rapidapi.com/ip/check', headers = headers)

print(r.json())

```

`GET /ip/check`

*Returns the IP address of the client with all the location data. *

Returns the IP address of the client with all the location data. 

<h3 id="get__ip_check-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|format|query|string|false|The desired format of the data. Options: json or xml. |
|filter|query|string|false|Lets you to return only required data. It can be comma separated. Options: asn, city, country, continent, area, currency, security, time, postcode. If left blank the API will return all available data.. |
|language|query|string|false|language code to return the results in the specific language. Available options are: en, ru, zh, es, ar, fr, fa, ja, pl, it, pt, de. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: ip-geo-location.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "area": {
      "properties": {
        "code": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "asn": {
      "properties": {
        "number": {
          "type": "string"
        },
        "organisation": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "city": {
      "properties": {
        "geonameid": {
          "type": "integer"
        },
        "name": {
          "type": "string"
        },
        "population": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "continent": {
      "properties": {
        "code": {
          "type": "string"
        },
        "geonameid": {
          "type": "integer"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "country": {
      "properties": {
        "area_size": {
          "type": "string"
        },
        "capital": {
          "type": "string"
        },
        "code": {
          "type": "string"
        },
        "geonameid": {
          "type": "integer"
        },
        "is_in_eu": {
          "type": "boolean"
        },
        "languages": {
          "properties": {
            "en": {
              "type": "string"
            },
            "es": {
              "type": "string"
            },
            "fr": {
              "type": "string"
            },
            "haw": {
              "type": "string"
            }
          },
          "type": "object"
        },
        "name": {
          "type": "string"
        },
        "phone_code": {
          "type": "string"
        },
        "population": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "currency": {
      "properties": {
        "code": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "ip": {
      "type": "string"
    },
    "location": {
      "properties": {
        "latitude": {
          "type": "number"
        },
        "longitude": {
          "type": "number"
        }
      },
      "type": "object"
    },
    "postcode": {
      "type": "string"
    },
    "security": {
      "properties": {
        "is_crawler": {
          "type": "boolean"
        },
        "is_proxy": {
          "type": "boolean"
        },
        "is_thread": {
          "type": "boolean"
        },
        "is_tor": {
          "type": "boolean"
        }
      },
      "type": "object"
    },
    "status": {
      "type": "string"
    },
    "time": {
      "properties": {
        "gtm_offset": {
          "type": "integer"
        },
        "time": {
          "type": "string"
        },
        "timezone": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "type": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__ip_check-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__ip_check-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» area|object|false|none|none|
|»» code|string|false|none|none|
|»» name|string|false|none|none|
|» asn|object|false|none|none|
|»» number|string|false|none|none|
|»» organisation|string|false|none|none|
|» city|object|false|none|none|
|»» geonameid|integer|false|none|none|
|»» name|string|false|none|none|
|»» population|integer|false|none|none|
|» continent|object|false|none|none|
|»» code|string|false|none|none|
|»» geonameid|integer|false|none|none|
|»» name|string|false|none|none|
|» country|object|false|none|none|
|»» area_size|string|false|none|none|
|»» capital|string|false|none|none|
|»» code|string|false|none|none|
|»» geonameid|integer|false|none|none|
|»» is_in_eu|boolean|false|none|none|
|»» languages|object|false|none|none|
|»»» en|string|false|none|none|
|»»» es|string|false|none|none|
|»»» fr|string|false|none|none|
|»»» haw|string|false|none|none|
|»» name|string|false|none|none|
|»» phone_code|string|false|none|none|
|»» population|integer|false|none|none|
|» currency|object|false|none|none|
|»» code|string|false|none|none|
|»» name|string|false|none|none|
|» ip|string|false|none|none|
|» location|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» postcode|string|false|none|none|
|» security|object|false|none|none|
|»» is_crawler|boolean|false|none|none|
|»» is_proxy|boolean|false|none|none|
|»» is_thread|boolean|false|none|none|
|»» is_tor|boolean|false|none|none|
|» status|string|false|none|none|
|» time|object|false|none|none|
|»» gtm_offset|integer|false|none|none|
|»» time|string|false|none|none|
|»» timezone|string|false|none|none|
|» type|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__ip_{ip}

> Code samples

```shell
# You can also use wget
curl -X GET ip-geo-location.p.rapidapi.com/ip/{ip}?ip=type,string \
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

r = requests.get('ip-geo-location.p.rapidapi.com/ip/{ip}', params={
  'ip': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /ip/{ip}`

*Provides geo information for the given IP. *

Provides geo information for the given IP. 

<h3 id="get__ip_{ip}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ip|query|string|true|IPv4 or IPv6 address. |
|format|query|string|false|The desired format of the data. Options: json or xml. |
|filter|query|string|false|Lets you to return only required data. It can be comma separated. Options: asn, city, country, continent, area, currency, security, time, postcode. If left blank the API will return all available data.. |
|language|query|string|false|language code to return the results in the specific language. Available options are: en, ru, zh, es, ar, fr, fa, ja, pl, it, pt, de. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: ip-geo-location.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "area": {
      "properties": {
        "code": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "asn": {
      "properties": {
        "number": {
          "type": "string"
        },
        "organisation": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "city": {
      "properties": {
        "geonameid": {
          "type": "integer"
        },
        "name": {
          "type": "string"
        },
        "population": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "continent": {
      "properties": {
        "code": {
          "type": "string"
        },
        "geonameid": {
          "type": "integer"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "country": {
      "properties": {
        "area_size": {
          "type": "string"
        },
        "capital": {
          "type": "string"
        },
        "code": {
          "type": "string"
        },
        "geonameid": {
          "type": "integer"
        },
        "is_in_eu": {
          "type": "boolean"
        },
        "languages": {
          "properties": {
            "en": {
              "type": "string"
            },
            "es": {
              "type": "string"
            },
            "fr": {
              "type": "string"
            },
            "haw": {
              "type": "string"
            }
          },
          "type": "object"
        },
        "name": {
          "type": "string"
        },
        "phone_code": {
          "type": "string"
        },
        "population": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "currency": {
      "properties": {
        "code": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "ip": {
      "type": "string"
    },
    "location": {
      "properties": {
        "latitude": {
          "type": "number"
        },
        "longitude": {
          "type": "number"
        }
      },
      "type": "object"
    },
    "postcode": {
      "type": "string"
    },
    "security": {
      "properties": {
        "is_crawler": {
          "type": "boolean"
        },
        "is_proxy": {
          "type": "boolean"
        },
        "is_thread": {
          "type": "boolean"
        },
        "is_tor": {
          "type": "boolean"
        }
      },
      "type": "object"
    },
    "status": {
      "type": "string"
    },
    "time": {
      "properties": {
        "gtm_offset": {
          "type": "integer"
        },
        "time": {
          "type": "string"
        },
        "timezone": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "type": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__ip_{ip}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__ip_{ip}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» area|object|false|none|none|
|»» code|string|false|none|none|
|»» name|string|false|none|none|
|» asn|object|false|none|none|
|»» number|string|false|none|none|
|»» organisation|string|false|none|none|
|» city|object|false|none|none|
|»» geonameid|integer|false|none|none|
|»» name|string|false|none|none|
|»» population|integer|false|none|none|
|» continent|object|false|none|none|
|»» code|string|false|none|none|
|»» geonameid|integer|false|none|none|
|»» name|string|false|none|none|
|» country|object|false|none|none|
|»» area_size|string|false|none|none|
|»» capital|string|false|none|none|
|»» code|string|false|none|none|
|»» geonameid|integer|false|none|none|
|»» is_in_eu|boolean|false|none|none|
|»» languages|object|false|none|none|
|»»» en|string|false|none|none|
|»»» es|string|false|none|none|
|»»» fr|string|false|none|none|
|»»» haw|string|false|none|none|
|»» name|string|false|none|none|
|»» phone_code|string|false|none|none|
|»» population|integer|false|none|none|
|» currency|object|false|none|none|
|»» code|string|false|none|none|
|»» name|string|false|none|none|
|» ip|string|false|none|none|
|» location|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» postcode|string|false|none|none|
|» security|object|false|none|none|
|»» is_crawler|boolean|false|none|none|
|»» is_proxy|boolean|false|none|none|
|»» is_thread|boolean|false|none|none|
|»» is_tor|boolean|false|none|none|
|» status|string|false|none|none|
|» time|object|false|none|none|
|»» gtm_offset|integer|false|none|none|
|»» time|string|false|none|none|
|»» timezone|string|false|none|none|
|» type|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

