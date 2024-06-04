<!-- Generator: Widdershins v4.0.1 -->

<h1 id="deforum_deforum_stable_diffusion">deforum_deforum_stable_diffusion v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Animating prompts with stable diffusion

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="deforum_deforum_stable_diffusion-default">Default</h1>

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
        "angle": {
          "default": "0:(0)",
          "description": "angle parameter for the motion",
          "type": "string"
        },
        "animation_prompts": {
          "default": "0: a beautiful portrait of a woman by Artgerm, trending on Artstation",
          "description": "Prompt for animation. Provide 'frame number : prompt at this frame', separate different prompts with '|'. Make sure the frame number does not exceed the max_frames.",
          "type": "string"
        },
        "color_coherence": {
          "default": "Match Frame 0 LAB",
          "description": "An enumeration.",
          "enum": [
            "None",
            "Match Frame 0 HSV",
            "Match Frame 0 LAB",
            "Match Frame 0 RGB"
          ],
          "type": "string"
        },
        "fps": {
          "default": 15,
          "description": "Choose fps for the video.",
          "maximum": 60,
          "minimum": 10,
          "type": "integer"
        },
        "max_frames": {
          "default": 100,
          "description": "Number of frames for animation",
          "maximum": 1000,
          "minimum": 100,
          "type": "integer"
        },
        "sampler": {
          "default": "plms",
          "description": "An enumeration.",
          "enum": [
            "klms",
            "dpm2",
            "dpm2_ancestral",
            "heun",
            "euler",
            "euler_ancestral",
            "plms",
            "ddim"
          ],
          "type": "string"
        },
        "seed": {
          "description": "Random seed. Leave blank to randomize the seed",
          "type": "integer"
        },
        "translation_x": {
          "default": "0: (0)",
          "description": "translation_x parameter for the motion",
          "type": "string"
        },
        "translation_y": {
          "default": "0: (0)",
          "description": "translation_y parameter for the motion",
          "type": "string"
        },
        "zoom": {
          "default": "0: (1.04)",
          "description": "zoom parameter for the motion",
          "type": "string"
        }
      },
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: e22e77495f2fb83c34d5fae2ad8ab63c0a87b6b573b6208e1535b23b89ea66d6. The ID of the model version",
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
|»» angle|body|string|false|angle parameter for the motion|
|»» animation_prompts|body|string|false|Prompt for animation. Provide 'frame number : prompt at this frame', separate different prompts with '|'. Make sure the frame number does not exceed the max_frames.|
|»» color_coherence|body|string|false|An enumeration.|
|»» fps|body|integer|false|Choose fps for the video.|
|»» max_frames|body|integer|false|Number of frames for animation|
|»» sampler|body|string|false|An enumeration.|
|»» seed|body|integer|false|Random seed. Leave blank to randomize the seed|
|»» translation_x|body|string|false|translation_x parameter for the motion|
|»» translation_y|body|string|false|translation_y parameter for the motion|
|»» zoom|body|string|false|zoom parameter for the motion|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: e22e77495f2fb83c34d5fae2ad8ab63c0a87b6b573b6208e1535b23b89ea66d6. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» color_coherence|None|
|»» color_coherence|Match Frame 0 HSV|
|»» color_coherence|Match Frame 0 LAB|
|»» color_coherence|Match Frame 0 RGB|
|»» sampler|klms|
|»» sampler|dpm2|
|»» sampler|dpm2_ancestral|
|»» sampler|heun|
|»» sampler|euler|
|»» sampler|euler_ancestral|
|»» sampler|plms|
|»» sampler|ddim|

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

