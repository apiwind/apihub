<!-- Generator: Widdershins v4.0.1 -->

<h1 id="youtube-transcriptor">Youtube transcriptor v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Transcript Youtube Podcasts & videos.  

Base URLs:

* <a href="youtube-transcriptor.p.rapidapi.com">youtube-transcriptor.p.rapidapi.com</a>

<h1 id="youtube-transcriptor-default">Default</h1>

## get__transcript

> Code samples

```shell
# You can also use wget
curl -X GET youtube-transcriptor.p.rapidapi.com/transcript?video_id=type,string \
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

r = requests.get('youtube-transcriptor.p.rapidapi.com/transcript', params={
  'video_id': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /transcript`

*Transcript videos. *

Transcript videos. 

<h3 id="get__transcript-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|video_id|query|string|true|Example : youtube.com/watch?v=0-fD8SDEvrR. |
|lang|query|string|false|auto detect language if none provided.. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: youtube-transcriptor.p.rapidapi.com. |

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

<h3 id="get__transcript-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__transcript-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

