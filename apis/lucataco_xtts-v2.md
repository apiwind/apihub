<!-- Generator: Widdershins v4.0.1 -->

<h1 id="lucataco_xtts-v2">lucataco_xtts-v2 v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Coqui XTTS-v2: Multilingual Text To Speech Voice Cloning

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="lucataco_xtts-v2-default">Default</h1>

## get__predictions

> Code samples

```shell
# You can also use wget
curl -X GET https://api.replicate.com/predictions \
  -H 'Accept: application/json' \
  -H 'Authorization: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': {
  "type": "string"
}
}

r = requests.get('https://api.replicate.com/predictions', headers = headers)

print(r.json())

```

`GET /predictions`

*List the first page of your predictions*

List the first page of your predictions

<h3 id="get__predictions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Eg: Bearer $REPLICATE_API_TOKEN. |

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__predictions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__predictions-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## post__predictions

> Code samples

```shell
# You can also use wget
curl -X POST https://api.replicate.com/predictions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: [object Object]' \
  -H 'Content-Type: [object Object]'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'Authorization': {
  "type": "string"
},
  'Content-Type': {
  "type": "string"
}
}

r = requests.post('https://api.replicate.com/predictions', headers = headers)

print(r.json())

```

`POST /predictions`

*Create a prediction and get the output.*

Create a prediction and get the output.

> Body parameter

```json
{
  "properties": {
    "input": {
      "properties": {
        "cleanup_voice": {
          "default": false,
          "description": "Whether to apply denoising to the speaker audio (microphone recordings)",
          "type": "boolean"
        },
        "language": {
          "default": "en",
          "description": "Output language for the synthesised speech",
          "enum": [
            "en",
            "es",
            "fr",
            "de",
            "it",
            "pt",
            "pl",
            "tr",
            "ru",
            "nl",
            "cs",
            "ar",
            "zh",
            "hu",
            "ko",
            "hi"
          ],
          "type": "string"
        },
        "speaker": {
          "description": "Original speaker audio (wav, mp3, m4a, ogg, or flv)",
          "format": "uri",
          "type": "string"
        },
        "text": {
          "default": "Hi there, I'm your new voice clone. Try your best to upload quality audio",
          "description": "Text to synthesize",
          "type": "string"
        }
      },
      "required": [
        "speaker"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 684bc3855b37866c0c65add2ff39c78f3dea3f4ff103a436465326e0f438d55e. The ID of the model version",
      "type": "string"
    },
    "webhook": {
      "description": "An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.",
      "type": "string"
    },
    "webhook_events_filter": {
      "description": "By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).",
      "type": "string"
    }
  },
  "required": [
    "input",
    "version"
  ],
  "type": "object"
}
```

<h3 id="post__predictions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Eg: Bearer $REPLICATE_API_TOKEN. |
|Content-Type|header|string|true|Eg: application/json. |
|body|body|object|false|none|
|» input|body|object|true|none|
|»» cleanup_voice|body|boolean|false|Whether to apply denoising to the speaker audio (microphone recordings)|
|»» language|body|string|false|Output language for the synthesised speech|
|»» speaker|body|string(uri)|true|Original speaker audio (wav, mp3, m4a, ogg, or flv)|
|»» text|body|string|false|Text to synthesize|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 684bc3855b37866c0c65add2ff39c78f3dea3f4ff103a436465326e0f438d55e. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» language|en|
|»» language|es|
|»» language|fr|
|»» language|de|
|»» language|it|
|»» language|pt|
|»» language|pl|
|»» language|tr|
|»» language|ru|
|»» language|nl|
|»» language|cs|
|»» language|ar|
|»» language|zh|
|»» language|hu|
|»» language|ko|
|»» language|hi|

> Example responses

> 200 Response

```json
{
  "type": "string"
}
```

<h3 id="post__predictions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|string|

<aside class="success">
This operation does not require authentication
</aside>

## get__predictions_{prediction_id}

> Code samples

```shell
# You can also use wget
curl -X GET https://api.replicate.com/predictions/{prediction_id} \
  -H 'Accept: application/json' \
  -H 'Authorization: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': {
  "type": "string"
}
}

r = requests.get('https://api.replicate.com/predictions/{prediction_id}', headers = headers)

print(r.json())

```

`GET /predictions/{prediction_id}`

*Get the latest version of a prediction by id*

Get the latest version of a prediction by id

<h3 id="get__predictions_{prediction_id}-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Eg: Bearer $REPLICATE_API_TOKEN. |
|prediction_id|path|string|true|The ID of the prediction to get|

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="get__predictions_{prediction_id}-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__predictions_{prediction_id}-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>

## post__predictions_{prediction_id}_cancel

> Code samples

```shell
# You can also use wget
curl -X POST https://api.replicate.com/predictions/{prediction_id}/cancel \
  -H 'Accept: application/json' \
  -H 'Authorization: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'Authorization': {
  "type": "string"
}
}

r = requests.post('https://api.replicate.com/predictions/{prediction_id}/cancel', headers = headers)

print(r.json())

```

`POST /predictions/{prediction_id}/cancel`

*Cancel an in progress prediction*

Cancel an in progress prediction

<h3 id="post__predictions_{prediction_id}_cancel-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Eg: Bearer $REPLICATE_API_TOKEN. |
|prediction_id|path|string|true|The ID of the prediction to cancel|

> Example responses

> 200 Response

```json
{
  "type": "object"
}
```

<h3 id="post__predictions_{prediction_id}_cancel-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__predictions_{prediction_id}_cancel-responseschema">Response Schema</h3>

<aside class="success">
This operation does not require authentication
</aside>
