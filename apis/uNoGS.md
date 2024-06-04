<!-- Generator: Widdershins v4.0.1 -->

<h1 id="unogs">uNoGS v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

uNoGS (unofficial Netflix online Global Search) allows anyone to search the global Netflix catalog.  uNoGS (unofficial Netflix online Global Search) allows anyone to easily search the global Netflix catalog. V2 is now out and designed from the ground up to work with RapidAPI.   

Base URLs:

* <a href="unogs-unogs-v1.p.rapidapi.com">unogs-unogs-v1.p.rapidapi.com</a>

<h1 id="unogs-default">Default</h1>

## get__search_deleted

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/search/deleted \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/search/deleted', headers = headers)

print(r.json())

```

`GET /search/deleted`

*Search for Deleted Titles by Country or Title Name. delete_date will either take a single date and check for all titles added after that date or it will take 2 dates separated by a comma to check titles added between them.*

Search for Deleted Titles by Country or Title Name. delete_date will either take a single date and check for all titles added after that date or it will take 2 dates separated by a comma to check titles added between them.

<h3 id="get__search_deleted-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|title|query|string|false|search all titles by name. |
|delete_date|query|string|false|2018-01-01 or 2010-01-01,2012-01-01 see Parameter Notes. |
|netflix_id|query|number|false|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|limit|query|number|false|Maximum: 100. limit of object returned. |
|offset|query|number|false|where you want the response to start e.g. 10 starts with the 10th element. |
|country_list|query|string|false|CSV list of country IDs e.g. 46,78. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "imdb_id": {
            "type": "string"
          },
          "img": {
            "type": "string"
          },
          "netflix_id": {
            "type": "integer"
          },
          "poster": {
            "type": "string"
          },
          "rating": {
            "type": "string"
          },
          "runtime": {
            "type": "string"
          },
          "synopsis": {
            "type": "string"
          },
          "title": {
            "type": "string"
          },
          "title_date": {
            "type": "string"
          },
          "title_type": {
            "type": "string"
          },
          "top250": {
            "type": "integer"
          },
          "top250tv": {
            "type": "integer"
          },
          "year": {
            "type": "string"
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

<h3 id="get__search_deleted-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__search_deleted-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» imdb_id|string|false|none|none|
|»» img|string|false|none|none|
|»» netflix_id|integer|false|none|none|
|»» poster|string|false|none|none|
|»» rating|string|false|none|none|
|»» runtime|string|false|none|none|
|»» synopsis|string|false|none|none|
|»» title|string|false|none|none|
|»» title_date|string|false|none|none|
|»» title_type|string|false|none|none|
|»» top250|integer|false|none|none|
|»» top250tv|integer|false|none|none|
|»» year|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__search_people

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/search/people \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/search/people', headers = headers)

print(r.json())

```

`GET /search/people`

*Search for people by title name, person name, or netflix_id. *

Search for people by title name, person name, or netflix_id. 

<h3 id="get__search_people-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|netflix_id|query|number|false|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|person_type|query|string|false|Enum: Actor,Creator,Director. what the person did on the project. |
|limit|query|number|false|Maximum: 100. limit of object returned. |
|name|query|string|false|search all titles by name. |
|offset|query|number|false|where you want the response to start e.g. 10 starts with the 10th element. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "imdb_id": {
            "type": "string"
          },
          "img": {
            "type": "string"
          },
          "netflix_id": {
            "type": "integer"
          },
          "poster": {
            "type": "string"
          },
          "rating": {
            "type": "string"
          },
          "runtime": {
            "type": "string"
          },
          "synopsis": {
            "type": "string"
          },
          "title": {
            "type": "string"
          },
          "title_date": {
            "type": "string"
          },
          "title_type": {
            "type": "string"
          },
          "top250": {
            "type": "integer"
          },
          "top250tv": {
            "type": "integer"
          },
          "year": {
            "type": "string"
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

<h3 id="get__search_people-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__search_people-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» imdb_id|string|false|none|none|
|»» img|string|false|none|none|
|»» netflix_id|integer|false|none|none|
|»» poster|string|false|none|none|
|»» rating|string|false|none|none|
|»» runtime|string|false|none|none|
|»» synopsis|string|false|none|none|
|»» title|string|false|none|none|
|»» title_date|string|false|none|none|
|»» title_type|string|false|none|none|
|»» top250|integer|false|none|none|
|»» top250tv|integer|false|none|none|
|»» year|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__search_titles

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/search/titles \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/search/titles', headers = headers)

print(r.json())

```

`GET /search/titles`

*Parameter Notes:. new_date will either take a single date and check for all titles added after that date or it will take 2 dates separated by a comma to check titles added between them.*

Parameter Notes:. new_date will either take a single date and check for all titles added after that date or it will take 2 dates separated by a comma to check titles added between them.

<h3 id="get__search_titles-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|end_rating|query|string|false|number between 1 and 10, aligns with imdb rating, if there is one. |
|country_list|query|string|false|CSV list of country IDs e.g. 46,78. |
|start_year|query|number|false|Minimum: 1900. year date > 1900. |
|person|query|string|false|name of person in title. |
|offset|query|number|false|where you want the response to start e.g. 10 starts with the 10th element. |
|order_by|query|string|false|Enum: date,date_asc,rating,rating_asc,title,title_asc,video_type,video_type_asc,runtime,runtime_asc,film_year,film_year_asc,top250,top250_asc,top250tv,top250tv_asc. Order of Response. |
|limit|query|number|false|Maximum: 100. limit of object returned. |
|end_year|query|number|false|Minimum: 1900. year date > 1900. |
|top250|query|number|false|IMDB top 250 Movies number 0-250. |
|start_rating|query|string|false|number between 1 and 10, aligns with imdb rating, if there is one. |
|new_date|query|string|false|2018-01-01 or 2010-01-01,2012-01-01 see Parameter Notes. |
|top250tv|query|number|false|IMDB top 250 Series number 0-250. |
|title|query|string|false|search all titles by name. |
|expiring|query|string|false|if 'true' show all titles set to expire. |
|subtitle|query|string|false|name of subtitle language e.g. english. |
|type|query|string|false|Enum: movie,series. movie or series. |
|genre_list|query|string|false|CSV list of genres, see misc/genre endpoint. |
|audio|query|string|false|name of audio language e.g english. |
|audio_sub_andor|query|string|false|and=language in bot audio and sub, or=language in either audio or sub. |
|country_andorunique|query|string|false|and=titles in all countries, or=any title in these countries, unique=unique titles in chosen countries. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "imdb_id": {
            "type": "string"
          },
          "img": {
            "type": "string"
          },
          "netflix_id": {
            "type": "integer"
          },
          "poster": {
            "type": "string"
          },
          "rating": {
            "type": "string"
          },
          "runtime": {
            "type": "string"
          },
          "synopsis": {
            "type": "string"
          },
          "title": {
            "type": "string"
          },
          "title_date": {
            "type": "string"
          },
          "title_type": {
            "type": "string"
          },
          "top250": {
            "type": "integer"
          },
          "top250tv": {
            "type": "integer"
          },
          "year": {
            "type": "string"
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

<h3 id="get__search_titles-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__search_titles-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» imdb_id|string|false|none|none|
|»» img|string|false|none|none|
|»» netflix_id|integer|false|none|none|
|»» poster|string|false|none|none|
|»» rating|string|false|none|none|
|»» runtime|string|false|none|none|
|»» synopsis|string|false|none|none|
|»» title|string|false|none|none|
|»» title_date|string|false|none|none|
|»» title_type|string|false|none|none|
|»» top250|integer|false|none|none|
|»» top250tv|integer|false|none|none|
|»» year|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__static_countries

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/static/countries \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/static/countries', headers = headers)

print(r.json())

```

`GET /static/countries`

*Get Static list of Supported Countries. *

Get Static list of Supported Countries. 

<h3 id="get__static_countries-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "results": {
      "items": {
        "properties": {
          "country": {
            "type": "string"
          },
          "countrycode": {
            "type": "string"
          },
          "expiring": {
            "type": "integer"
          },
          "id": {
            "type": "integer"
          },
          "nl7": {
            "type": "integer"
          },
          "tmovs": {
            "type": "integer"
          },
          "tseries": {
            "type": "integer"
          },
          "tvids": {
            "type": "integer"
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

<h3 id="get__static_countries-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__static_countries-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» results|[object]|false|none|none|
|»» country|string|false|none|none|
|»» countrycode|string|false|none|none|
|»» expiring|integer|false|none|none|
|»» id|integer|false|none|none|
|»» nl7|integer|false|none|none|
|»» tmovs|integer|false|none|none|
|»» tseries|integer|false|none|none|
|»» tvids|integer|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__static_genres

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/static/genres \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/static/genres', headers = headers)

print(r.json())

```

`GET /static/genres`

*Get Static list of Genres (updated daily). *

Get Static list of Genres (updated daily). 

<h3 id="get__static_genres-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "results": {
      "items": {
        "properties": {
          "country": {
            "type": "string"
          },
          "countrycode": {
            "type": "string"
          },
          "expiring": {
            "type": "integer"
          },
          "id": {
            "type": "integer"
          },
          "nl7": {
            "type": "integer"
          },
          "tmovs": {
            "type": "integer"
          },
          "tseries": {
            "type": "integer"
          },
          "tvids": {
            "type": "integer"
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

<h3 id="get__static_genres-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__static_genres-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» results|[object]|false|none|none|
|»» country|string|false|none|none|
|»» countrycode|string|false|none|none|
|»» expiring|integer|false|none|none|
|»» id|integer|false|none|none|
|»» nl7|integer|false|none|none|
|»» tmovs|integer|false|none|none|
|»» tseries|integer|false|none|none|
|»» tvids|integer|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__title_countries

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/title/countries?netflix_id=type,number \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/title/countries', params={
  'netflix_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /title/countries`

*All Country/Language information associated with a Title. *

All Country/Language information associated with a Title. 

<h3 id="get__title_countries-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|netflix_id|query|number|true|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "audio": {
            "type": "string"
          },
          "country": {
            "type": "string"
          },
          "country_code": {
            "type": "string"
          },
          "expire_date": {
            "type": "string"
          },
          "new_date": {
            "type": "string"
          },
          "season_detail": {
            "type": "string"
          },
          "subtitle": {
            "type": "string"
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

<h3 id="get__title_countries-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__title_countries-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» audio|string|false|none|none|
|»» country|string|false|none|none|
|»» country_code|string|false|none|none|
|»» expire_date|string|false|none|none|
|»» new_date|string|false|none|none|
|»» season_detail|string|false|none|none|
|»» subtitle|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__title_details

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/title/details?netflix_id=type,number \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/title/details', params={
  'netflix_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /title/details`

*General Details associated with a Title. *

General Details associated with a Title. 

<h3 id="get__title_details-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|netflix_id|query|number|true|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "alt_id": {
      "type": "string"
    },
    "alt_image": {
      "type": "string"
    },
    "alt_metascore": {
      "type": "string"
    },
    "alt_plot": {
      "type": "string"
    },
    "alt_runtime": {
      "type": "string"
    },
    "alt_votes": {
      "type": "string"
    },
    "awards": {
      "type": "string"
    },
    "default_image": {
      "type": "string"
    },
    "large_image": {
      "type": "string"
    },
    "latest_date": {
      "type": "string"
    },
    "maturity_label": {
      "type": "string"
    },
    "maturity_level": {
      "type": "string"
    },
    "netflix_id": {
      "type": "string"
    },
    "origin_country": {
      "type": "string"
    },
    "poster": {
      "type": "string"
    },
    "rating": {
      "type": "string"
    },
    "runtime": {
      "type": "string"
    },
    "start_date": {
      "type": "string"
    },
    "synopsis": {
      "type": "string"
    },
    "title": {
      "type": "string"
    },
    "title_type": {
      "type": "string"
    },
    "year": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__title_details-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__title_details-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» alt_id|string|false|none|none|
|» alt_image|string|false|none|none|
|» alt_metascore|string|false|none|none|
|» alt_plot|string|false|none|none|
|» alt_runtime|string|false|none|none|
|» alt_votes|string|false|none|none|
|» awards|string|false|none|none|
|» default_image|string|false|none|none|
|» large_image|string|false|none|none|
|» latest_date|string|false|none|none|
|» maturity_label|string|false|none|none|
|» maturity_level|string|false|none|none|
|» netflix_id|string|false|none|none|
|» origin_country|string|false|none|none|
|» poster|string|false|none|none|
|» rating|string|false|none|none|
|» runtime|string|false|none|none|
|» start_date|string|false|none|none|
|» synopsis|string|false|none|none|
|» title|string|false|none|none|
|» title_type|string|false|none|none|
|» year|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__title_episodes

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/title/episodes?season_id=type,number&netflix_id=type,number \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/title/episodes', params={
  'season_id': {
  "type": "number"
},  'netflix_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /title/episodes`

*All Episodes associated with a Title. *

All Episodes associated with a Title. 

<h3 id="get__title_episodes-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|season_id|query|number|true|actual netflix season ID e.g. 70105286 for Breaking Bad season 1. |
|netflix_id|query|number|true|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "episode_id": {
            "type": "integer"
          },
          "episode_number": {
            "type": "string"
          },
          "image": {
            "type": "string"
          },
          "netflix_id": {
            "type": "integer"
          },
          "season_id": {
            "type": "integer"
          },
          "season_number": {
            "type": "string"
          },
          "synopsis": {
            "type": "string"
          },
          "title": {
            "type": "string"
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

<h3 id="get__title_episodes-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__title_episodes-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» episode_id|integer|false|none|none|
|»» episode_number|string|false|none|none|
|»» image|string|false|none|none|
|»» netflix_id|integer|false|none|none|
|»» season_id|integer|false|none|none|
|»» season_number|string|false|none|none|
|»» synopsis|string|false|none|none|
|»» title|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__title_genres

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/title/genres?netflix_id=type,number \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/title/genres', params={
  'netflix_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /title/genres`

*All Genres Associated with a Title. *

All Genres Associated with a Title. 

<h3 id="get__title_genres-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|netflix_id|query|number|true|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "genre": {
            "type": "string"
          },
          "genre_id": {
            "type": "integer"
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

<h3 id="get__title_genres-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__title_genres-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» genre|string|false|none|none|
|»» genre_id|integer|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__title_images

> Code samples

```shell
# You can also use wget
curl -X GET unogs-unogs-v1.p.rapidapi.com/title/images?netflix_id=type,number \
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

r = requests.get('unogs-unogs-v1.p.rapidapi.com/title/images', params={
  'netflix_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /title/images`

*All Images associated with a Title. *

All Images associated with a Title. 

<h3 id="get__title_images-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|netflix_id|query|number|true|actual netflix ID for the title e.g. 70143836 for Breaking Bad. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: unogs-unogs-v1.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "object": {
      "properties": {
        "limit": {
          "type": "integer"
        },
        "offset": {
          "type": "integer"
        },
        "total": {
          "type": "integer"
        }
      },
      "type": "object"
    },
    "results": {
      "items": {
        "properties": {
          "image_type": {
            "type": "string"
          },
          "url": {
            "description": "filmid as netflixid,url,itype",
            "type": "string"
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

<h3 id="get__title_images-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__title_images-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» object|object|false|none|none|
|»» limit|integer|false|none|none|
|»» offset|integer|false|none|none|
|»» total|integer|false|none|none|
|» results|[object]|false|none|none|
|»» image_type|string|false|none|none|
|»» url|string|false|none|filmid as netflixid,url,itype|

<aside class="success">
This operation does not require authentication
</aside>

