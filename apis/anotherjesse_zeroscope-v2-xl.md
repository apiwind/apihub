<!-- Generator: Widdershins v4.0.1 -->

<h1 id="anotherjesse_zeroscope-v2-xl">anotherjesse_zeroscope-v2-xl v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Zeroscope V2 XL & 576w

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="anotherjesse_zeroscope-v2-xl-default">Default</h1>

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
        "batch_size": {
          "default": 1,
          "description": "Batch size",
          "minimum": 1,
          "type": "integer"
        },
        "fps": {
          "default": 8,
          "description": "fps for the output video",
          "type": "integer"
        },
        "guidance_scale": {
          "default": 7.5,
          "description": "Guidance scale",
          "maximum": 100,
          "minimum": 1,
          "type": "number"
        },
        "height": {
          "default": 320,
          "description": "Height of the output video",
          "minimum": 256,
          "type": "integer"
        },
        "init_video": {
          "description": "URL of the initial video (optional)",
          "format": "uri",
          "type": "string"
        },
        "init_weight": {
          "default": 0.5,
          "description": "Strength of init_video",
          "type": "number"
        },
        "model": {
          "default": "xl",
          "description": "Model to use",
          "enum": [
            "xl",
            "576w",
            "potat1",
            "animov-512x"
          ],
          "type": "string"
        },
        "negative_prompt": {
          "description": "Negative prompt",
          "type": "string"
        },
        "num_frames": {
          "default": 24,
          "description": "Number of frames for the output video",
          "type": "integer"
        },
        "num_inference_steps": {
          "default": 50,
          "description": "Number of denoising steps",
          "maximum": 500,
          "minimum": 1,
          "type": "integer"
        },
        "prompt": {
          "default": "An astronaut riding a horse",
          "description": "Input prompt",
          "type": "string"
        },
        "remove_watermark": {
          "default": false,
          "description": "Remove watermark",
          "type": "boolean"
        },
        "seed": {
          "description": "Random seed. Leave blank to randomize the seed",
          "type": "integer"
        },
        "width": {
          "default": 576,
          "description": "Width of the output video",
          "minimum": 256,
          "type": "integer"
        }
      },
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 9f747673945c62801b13b84701c783929c0ee784e4748ec062204894dda1a351. The ID of the model version",
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
|»» batch_size|body|integer|false|Batch size|
|»» fps|body|integer|false|fps for the output video|
|»» guidance_scale|body|number|false|Guidance scale|
|»» height|body|integer|false|Height of the output video|
|»» init_video|body|string(uri)|false|URL of the initial video (optional)|
|»» init_weight|body|number|false|Strength of init_video|
|»» model|body|string|false|Model to use|
|»» negative_prompt|body|string|false|Negative prompt|
|»» num_frames|body|integer|false|Number of frames for the output video|
|»» num_inference_steps|body|integer|false|Number of denoising steps|
|»» prompt|body|string|false|Input prompt|
|»» remove_watermark|body|boolean|false|Remove watermark|
|»» seed|body|integer|false|Random seed. Leave blank to randomize the seed|
|»» width|body|integer|false|Width of the output video|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 9f747673945c62801b13b84701c783929c0ee784e4748ec062204894dda1a351. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» model|xl|
|»» model|576w|
|»» model|potat1|
|»» model|animov-512x|

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

<h3 id="post__predictions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__predictions-responseschema">Response Schema</h3>

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

