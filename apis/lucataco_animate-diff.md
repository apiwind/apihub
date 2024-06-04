<!-- Generator: Widdershins v4.0.1 -->

<h1 id="lucataco_animate-diff">lucataco_animate-diff v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Animate Your Personalized Text-to-Image Diffusion Models

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="lucataco_animate-diff-default">Default</h1>

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
        "guidance_scale": {
          "default": 7.5,
          "description": "guidance scale",
          "maximum": 10,
          "minimum": 1,
          "type": "number"
        },
        "motion_module": {
          "default": "mm_sd_v14",
          "description": "Select a Motion Model",
          "enum": [
            "mm_sd_v14",
            "mm_sd_v15",
            "mm_sd_v15_v2"
          ],
          "type": "string"
        },
        "n_prompt": {
          "default": "",
          "description": "Negative prompt",
          "type": "string"
        },
        "path": {
          "default": "toonyou_beta3.safetensors",
          "description": "Select a Module",
          "enum": [
            "toonyou_beta3.safetensors",
            "lyriel_v16.safetensors",
            "rcnzCartoon3d_v10.safetensors",
            "majicmixRealistic_v5Preview.safetensors",
            "realisticVisionV40_v20Novae.safetensors"
          ],
          "type": "string"
        },
        "prompt": {
          "default": "masterpiece, best quality, 1girl, solo, cherry blossoms, hanami, pink flower, white flower, spring season, wisteria, petals, flower, plum blossoms, outdoors, falling petals, white hair, black eyes",
          "description": "Input prompt",
          "type": "string"
        },
        "seed": {
          "description": "Seed (0 = random, maximum: 2147483647)",
          "type": "integer"
        },
        "steps": {
          "default": 25,
          "description": "Number of inference steps",
          "maximum": 100,
          "minimum": 1,
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
      "description": "Eg: beecf59c4aee8d81bf04f0381033dfa10dc16e845b4ae00d281e2fa377e48a9f. The ID of the model version",
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
|»» guidance_scale|body|number|false|guidance scale|
|»» motion_module|body|string|false|Select a Motion Model|
|»» n_prompt|body|string|false|Negative prompt|
|»» path|body|string|false|Select a Module|
|»» prompt|body|string|false|Input prompt|
|»» seed|body|integer|false|Seed (0 = random, maximum: 2147483647)|
|»» steps|body|integer|false|Number of inference steps|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: beecf59c4aee8d81bf04f0381033dfa10dc16e845b4ae00d281e2fa377e48a9f. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» motion_module|mm_sd_v14|
|»» motion_module|mm_sd_v15|
|»» motion_module|mm_sd_v15_v2|
|»» path|toonyou_beta3.safetensors|
|»» path|lyriel_v16.safetensors|
|»» path|rcnzCartoon3d_v10.safetensors|
|»» path|majicmixRealistic_v5Preview.safetensors|
|»» path|realisticVisionV40_v20Novae.safetensors|

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

