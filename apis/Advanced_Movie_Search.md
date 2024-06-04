<!-- Generator: Widdershins v4.0.1 -->

<h1 id="advanced-movie-search">Advanced Movie Search v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Search for movies via advanced queries like genre, name, etc. And get all their details  

Base URLs:

* <a href="advanced-movie-search.p.rapidapi.com">advanced-movie-search.p.rapidapi.com</a>

<h1 id="advanced-movie-search-default">Default</h1>

## get__discover_movie

> Code samples

```shell
# You can also use wget
curl -X GET advanced-movie-search.p.rapidapi.com/discover/movie \
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

r = requests.get('advanced-movie-search.p.rapidapi.com/discover/movie', headers = headers)

print(r.json())

```

`GET /discover/movie`

*Discover movies by Genre. *

Discover movies by Genre. 

<h3 id="get__discover_movie-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|with_genres|query|string|false|Eg, 80. |
|page|query|number|false|Eg, 1. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: advanced-movie-search.p.rapidapi.com. |

> Example responses

<h3 id="get__discover_movie-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|None|

<h3 id="get__discover_movie-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__genre_movie_list

> Code samples

```shell
# You can also use wget
curl -X GET advanced-movie-search.p.rapidapi.com/genre/movie/list \
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

r = requests.get('advanced-movie-search.p.rapidapi.com/genre/movie/list', headers = headers)

print(r.json())

```

`GET /genre/movie/list`

*Get list of all available genres. *

Get list of all available genres. 

<h3 id="get__genre_movie_list-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: advanced-movie-search.p.rapidapi.com. |

> Example responses

<h3 id="get__genre_movie_list-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|None|

<h3 id="get__genre_movie_list-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__movies_getdetails

> Code samples

```shell
# You can also use wget
curl -X GET advanced-movie-search.p.rapidapi.com/movies/getdetails?movie_id=type,number \
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

r = requests.get('advanced-movie-search.p.rapidapi.com/movies/getdetails', params={
  'movie_id': {
  "type": "number"
}
}, headers = headers)

print(r.json())

```

`GET /movies/getdetails`

*Get detailed response for a movie ID. *

Get detailed response for a movie ID. 

<h3 id="get__movies_getdetails-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|movie_id|query|number|true|Eg, 399566. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: advanced-movie-search.p.rapidapi.com. |

> Example responses

<h3 id="get__movies_getdetails-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|None|

<h3 id="get__movies_getdetails-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## get__search_movie

> Code samples

```shell
# You can also use wget
curl -X GET advanced-movie-search.p.rapidapi.com/search/movie?query=type,string \
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

r = requests.get('advanced-movie-search.p.rapidapi.com/search/movie', params={
  'query': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /search/movie`

*Search a movie by query string. *

Search a movie by query string. 

<h3 id="get__search_movie-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|query|query|string|true|Eg, kong. |
|page|query|number|false|Eg, 1. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: advanced-movie-search.p.rapidapi.com. |

> Example responses

<h3 id="get__search_movie-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|None|

<h3 id="get__search_movie-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

