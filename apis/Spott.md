<!-- Generator: Widdershins v4.0.1 -->

<h1 id="spott">Spott v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Search cities, countries and administrative divisions by name, autocompletion or IP. With Spott you’ll be able to:  Search places by a full query or autocompletion, across more than 240,000 records from all the world. Filter them by country, type and location. Find places and get their localized names in more than 20 languages. Get the place where an IP address is located.  

Base URLs:

* <a href="spott.p.rapidapi.com">spott.p.rapidapi.com</a>

<h1 id="spott-default">Default</h1>

## get__places

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places \
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

r = requests.get('spott.p.rapidapi.com/places', headers = headers)

print(r.json())

```

`GET /places`

*Returns a list of places (either countries, cities or administrative divisions) matching a query and filtered by properties.. *

Returns a list of places (either countries, cities or administrative divisions) matching a query and filtered by properties.. 

<h3 id="get__places-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|type|query|string|false|Filters places by \"type\". It's possible to specify multiple values separating them with commas. Valid types are CITY, ADMIN_DIVISION_1, ADMIN_DIVISION_2 and COUNTRY.. |
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, "localizedName" property will be null.. |
|skip|query|number|false|Amount of places to ignore before beginning to return results. Used together with \"limit\" to paginate results. Defaults to 0.. |
|country|query|string|false|Filters places by their country \"id\". It's possible to specify multiple values separating them with commas (Ex. ?country=US,CA,MX).. |
|limit|query|number|false|Maximum number of places to return. Used together with \"skip\" to paginate results. Defaults to 10, maximum is 100.. |
|adminDivision1|query|string|false|Filters places by their adminDivision1 \"id\". It's possible to specify multiple values separating them with commas (Ex. ?country=US.CA,US.DE).. |
|adminDivision2|query|string|false|Filters places by their adminDivision2 \"id\". It's possible to specify multiple values separating them with commas.. |
|accuracyRadiusKm|query|number|false|Maximum radius from the point specified by \"latitude\" and \"longitude\" to filter places located within the area. The value must be expressed in Kilometers. Defaults to 100km.. |
|latitude|query|number|false|Latitude component of a coordinates set to filter places by their location. This parameter is ignored if \"longitude\" is not specified.. |
|q|query|string|false|Query string to find places with a similar name.. |
|longitude|query|number|false|Longitude component of a coordinates set to filter places by their location. This parameter is ignored if \"latitude\" is not specified.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "items": {
    "type": "object"
  },
  "type": "array"
}
```

<h3 id="get__places-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__places_autocomplete

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places/autocomplete \
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

r = requests.get('spott.p.rapidapi.com/places/autocomplete', headers = headers)

print(r.json())

```

`GET /places/autocomplete`

*Returns a list of places matching a prefix and specified filter properties. Useful to create "search as you type" inputs.. *

Returns a list of places matching a prefix and specified filter properties. Useful to create "search as you type" inputs.. 

<h3 id="get__places_autocomplete-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|limit|query|number|false|Maximum number of places to return. Used together with \"skip\" to paginate results. Defaults to 10, maximum is 100.. |
|skip|query|number|false|Amount of places to ignore before beginning to return results. Used together with \"limit\" to paginate results. Defaults to 0.. |
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, \"localizedName\" property will be null.. |
|country|query|string|false|Filters places by their country \"id\". It's possible to specify multiple values separating them with commas (Ex. ?country=US,CA,MX).. |
|adminDivision1|query|string|false|Filters places by their adminDivision1 \"id\". It's possible to specify multiple values separating them with commas (Ex. ?country=US.CA,US.DE).. |
|accuracyRadiusKm|query|number|false|Maximum radius from the point specified by \"latitude\" and \"longitude\" to filter places located within the area. The value must be expressed in Kilometers. Defaults to 100km.. |
|latitude|query|number|false|Latitude component of a coordinates set to filter places by their location. This parameter is ignored if \"longitude\" is not specified.. |
|adminDivision2|query|string|false|Filters places by their adminDivision2 \"id\". It's possible to specify multiple values separating them with commas.. |
|q|query|string|false|Query string to find places which name starts with this prefix.. |
|longitude|query|number|false|Longitude component of a coordinates set to filter places by their location. This parameter is ignored if \"latitude\" is not specified.. |
|type|query|string|false|Filters places by their \"type\". It's possible to specify multiple values separating them with commas. Valid types are CITY, ADMIN_DIVISION_1, ADMIN_DIVISION_2 and COUNTRY.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "items": {
    "type": "object"
  },
  "type": "array"
}
```

<h3 id="get__places_autocomplete-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places_autocomplete-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__places_geoname-id_{geonameId}

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places/geoname-id/{geonameId} \
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

r = requests.get('spott.p.rapidapi.com/places/geoname-id/{geonameId}', headers = headers)

print(r.json())

```

`GET /places/geoname-id/{geonameId}`

*Returns a single Place identified by a Geoname ID.. *

Returns a single Place identified by a Geoname ID.. 

<h3 id="get__places_geoname-id_{geonameid}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|geonameId|path|number|true|Unique identificator given by Geonames. |
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, \"localizedName\" property will be null.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "adminDivision1": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "adminDivision2": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "coordinates": {
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
    "country": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "createdAt": {
      "format": "date-time",
      "type": "string"
    },
    "elevation": {
      "type": "integer"
    },
    "geonameId": {
      "type": "integer"
    },
    "geonamesUpdatedAt": {
      "format": "date-time",
      "type": "string"
    },
    "id": {
      "format": "utc-millisec",
      "type": "string"
    },
    "localizedName": {
      "type": "string"
    },
    "name": {
      "type": "string"
    },
    "population": {
      "type": "integer"
    },
    "timezoneId": {
      "type": "string"
    },
    "type": {
      "type": "string"
    },
    "updatedAt": {
      "format": "date-time",
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__places_geoname-id_{geonameid}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places_geoname-id_{geonameid}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» adminDivision1|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» adminDivision2|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» coordinates|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» country|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» createdAt|string(date-time)|false|none|none|
|» elevation|integer|false|none|none|
|» geonameId|integer|false|none|none|
|» geonamesUpdatedAt|string(date-time)|false|none|none|
|» id|string(utc-millisec)|false|none|none|
|» localizedName|string|false|none|none|
|» name|string|false|none|none|
|» population|integer|false|none|none|
|» timezoneId|string|false|none|none|
|» type|string|false|none|none|
|» updatedAt|string(date-time)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__places_ip_me

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places/ip/me \
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

r = requests.get('spott.p.rapidapi.com/places/ip/me', headers = headers)

print(r.json())

```

`GET /places/ip/me`

*Returns the place related to the IP where the request was performed. Returns "Not Found" error when no place is related to the IP.. *

Returns the place related to the IP where the request was performed. Returns "Not Found" error when no place is related to the IP.. 

<h3 id="get__places_ip_me-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, "localizedName" property will be null.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "adminDivision1": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "adminDivision2": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "coordinates": {
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
    "country": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "createdAt": {
      "format": "date-time",
      "type": "string"
    },
    "elevation": {
      "type": "integer"
    },
    "geonameId": {
      "type": "integer"
    },
    "geonamesUpdatedAt": {
      "format": "date-time",
      "type": "string"
    },
    "id": {
      "format": "utc-millisec",
      "type": "string"
    },
    "localizedName": {
      "type": "string"
    },
    "name": {
      "type": "string"
    },
    "population": {
      "type": "integer"
    },
    "timezoneId": {
      "type": "string"
    },
    "type": {
      "type": "string"
    },
    "updatedAt": {
      "format": "date-time",
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__places_ip_me-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places_ip_me-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» adminDivision1|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» adminDivision2|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» coordinates|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» country|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» createdAt|string(date-time)|false|none|none|
|» elevation|integer|false|none|none|
|» geonameId|integer|false|none|none|
|» geonamesUpdatedAt|string(date-time)|false|none|none|
|» id|string(utc-millisec)|false|none|none|
|» localizedName|string|false|none|none|
|» name|string|false|none|none|
|» population|integer|false|none|none|
|» timezoneId|string|false|none|none|
|» type|string|false|none|none|
|» updatedAt|string(date-time)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__places_ip_{id}

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places/ip/{id} \
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

r = requests.get('spott.p.rapidapi.com/places/ip/{id}', headers = headers)

print(r.json())

```

`GET /places/ip/{id}`

*Returns the Place where a given IP Address is located. Returns "Not Found" error when no place is related to the IP. When sending '127.0.0.1' or '0.0.0.0' IP Addresses it will return the Place from the request was performed.. *

Returns the Place where a given IP Address is located. Returns "Not Found" error when no place is related to the IP. When sending '127.0.0.1' or '0.0.0.0' IP Addresses it will return the Place from the request was performed.. 

<h3 id="get__places_ip_{id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|IP Address (v4 and v6 are supported).. |
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, "localizedName" property will be null.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "adminDivision1": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "adminDivision2": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "coordinates": {
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
    "country": {
      "properties": {
        "geonameId": {
          "type": "integer"
        },
        "id": {
          "type": "string"
        },
        "localizedName": {
          "type": "string"
        },
        "name": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "createdAt": {
      "format": "date-time",
      "type": "string"
    },
    "elevation": {
      "type": "integer"
    },
    "geonameId": {
      "type": "integer"
    },
    "geonamesUpdatedAt": {
      "format": "date-time",
      "type": "string"
    },
    "id": {
      "format": "utc-millisec",
      "type": "string"
    },
    "localizedName": {
      "type": "string"
    },
    "name": {
      "type": "string"
    },
    "population": {
      "type": "integer"
    },
    "timezoneId": {
      "type": "string"
    },
    "type": {
      "type": "string"
    },
    "updatedAt": {
      "format": "date-time",
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__places_ip_{id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places_ip_{id}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» adminDivision1|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» adminDivision2|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» coordinates|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» country|object|false|none|none|
|»» geonameId|integer|false|none|none|
|»» id|string|false|none|none|
|»» localizedName|string|false|none|none|
|»» name|string|false|none|none|
|» createdAt|string(date-time)|false|none|none|
|» elevation|integer|false|none|none|
|» geonameId|integer|false|none|none|
|» geonamesUpdatedAt|string(date-time)|false|none|none|
|» id|string(utc-millisec)|false|none|none|
|» localizedName|string|false|none|none|
|» name|string|false|none|none|
|» population|integer|false|none|none|
|» timezoneId|string|false|none|none|
|» type|string|false|none|none|
|» updatedAt|string(date-time)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__places_{id}

> Code samples

```shell
# You can also use wget
curl -X GET spott.p.rapidapi.com/places/{id} \
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

r = requests.get('spott.p.rapidapi.com/places/{id}', headers = headers)

print(r.json())

```

`GET /places/{id}`

*Returns a single Place identified by an ID.. *

Returns a single Place identified by an ID.. 

<h3 id="get__places_{id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|ID of the Place.. |
|language|query|string|false|Specifies a language (ISO 639-1) to get the localized name of the place. If translation is not available, "localizedName" property will be null.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: spott.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "areaSqKm": {
      "type": "integer"
    },
    "continentId": {
      "type": "string"
    },
    "coordinates": {
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
    "currencyCode": {
      "type": "string"
    },
    "currencyName": {
      "type": "string"
    },
    "domain": {
      "type": "string"
    },
    "elevation": {
      "type": "integer"
    },
    "geonameId": {
      "type": "integer"
    },
    "id": {
      "type": "string"
    },
    "iso2": {
      "type": "string"
    },
    "iso3": {
      "type": "string"
    },
    "isoNumeric": {
      "format": "color",
      "type": "string"
    },
    "languages": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "locales": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "localizedName": {
      "type": "string"
    },
    "name": {
      "type": "string"
    },
    "neighbourCountryIds": {
      "items": {
        "type": "string"
      },
      "type": "array"
    },
    "phoneCodes": {
      "items": {
        "format": "utc-millisec",
        "type": "string"
      },
      "type": "array"
    },
    "population": {
      "type": "integer"
    },
    "postalCodeFormat": {
      "type": "string"
    },
    "postalCodeRegex": {
      "type": "string"
    },
    "timezoneId": {
      "type": "string"
    },
    "type": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__places_{id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__places_{id}-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» areaSqKm|integer|false|none|none|
|» continentId|string|false|none|none|
|» coordinates|object|false|none|none|
|»» latitude|number|false|none|none|
|»» longitude|number|false|none|none|
|» currencyCode|string|false|none|none|
|» currencyName|string|false|none|none|
|» domain|string|false|none|none|
|» elevation|integer|false|none|none|
|» geonameId|integer|false|none|none|
|» id|string|false|none|none|
|» iso2|string|false|none|none|
|» iso3|string|false|none|none|
|» isoNumeric|string(color)|false|none|none|
|» languages|[string]|false|none|none|
|» locales|[string]|false|none|none|
|» localizedName|string|false|none|none|
|» name|string|false|none|none|
|» neighbourCountryIds|[string]|false|none|none|
|» phoneCodes|[string]|false|none|none|
|» population|integer|false|none|none|
|» postalCodeFormat|string|false|none|none|
|» postalCodeRegex|string|false|none|none|
|» timezoneId|string|false|none|none|
|» type|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

