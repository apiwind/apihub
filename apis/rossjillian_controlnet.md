<!-- Generator: Widdershins v4.0.1 -->

<h1 id="rossjillian_controlnet">rossjillian_controlnet v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Control diffusion models

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="rossjillian_controlnet-default">Default</h1>

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
        "eta": {
          "default": 0,
          "description": "Controls the amount of noise that is added to the input data during the denoising diffusion process. Higher value -> more noise",
          "type": "number"
        },
        "high_threshold": {
          "default": 200,
          "description": "[canny only] Line detection high threshold",
          "maximum": 255,
          "minimum": 1,
          "type": "integer"
        },
        "image": {
          "description": "Input image",
          "format": "uri",
          "type": "string"
        },
        "image_resolution": {
          "default": 512,
          "description": "Resolution of output image (will be scaled to this as its smaller dimension)",
          "enum": [
            256,
            512,
            768
          ],
          "type": "integer"
        },
        "low_threshold": {
          "default": 100,
          "description": "[canny only] Line detection low threshold",
          "maximum": 255,
          "minimum": 1,
          "type": "integer"
        },
        "negative_prompt": {
          "default": "Longbody, lowres, bad anatomy, bad hands, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality",
          "description": "Negative prompt",
          "type": "string"
        },
        "num_outputs": {
          "default": 1,
          "description": "Number of images to output (higher values may OOM)",
          "maximum": 4,
          "minimum": 1,
          "type": "integer"
        },
        "prompt": {
          "description": "Prompt for the model",
          "type": "string"
        },
        "return_reference_image": {
          "default": false,
          "description": "whether to return the reference image along with the output",
          "type": "boolean"
        },
        "scale": {
          "default": 9,
          "description": "Scale for classifier-free guidance",
          "maximum": 30,
          "minimum": 0.1,
          "type": "number"
        },
        "scheduler": {
          "default": "DDIM",
          "description": "Choose a scheduler.",
          "enum": [
            "DDIM",
            "DPMSolverMultistep",
            "HeunDiscrete",
            "K_EULER_ANCESTRAL",
            "K_EULER",
            "KLMS",
            "PNDM",
            "UniPCMultistep"
          ],
          "type": "string"
        },
        "seed": {
          "description": "Seed",
          "type": "integer"
        },
        "steps": {
          "default": 20,
          "description": "Steps",
          "type": "integer"
        },
        "structure": {
          "description": "Controlnet structure to condition on",
          "enum": [
            "canny",
            "depth",
            "hed",
            "hough",
            "normal",
            "pose",
            "scribble",
            "seg"
          ],
          "type": "string"
        }
      },
      "required": [
        "prompt",
        "image",
        "structure"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 795433b19458d0f4fa172a7ccf93178d2adb1cb8ab2ad6c8fdc33fdbcd49f477. The ID of the model version",
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
|»» eta|body|number|false|Controls the amount of noise that is added to the input data during the denoising diffusion process. Higher value -> more noise|
|»» high_threshold|body|integer|false|[canny only] Line detection high threshold|
|»» image|body|string(uri)|true|Input image|
|»» image_resolution|body|integer|false|Resolution of output image (will be scaled to this as its smaller dimension)|
|»» low_threshold|body|integer|false|[canny only] Line detection low threshold|
|»» negative_prompt|body|string|false|Negative prompt|
|»» num_outputs|body|integer|false|Number of images to output (higher values may OOM)|
|»» prompt|body|string|true|Prompt for the model|
|»» return_reference_image|body|boolean|false|whether to return the reference image along with the output|
|»» scale|body|number|false|Scale for classifier-free guidance|
|»» scheduler|body|string|false|Choose a scheduler.|
|»» seed|body|integer|false|Seed|
|»» steps|body|integer|false|Steps|
|»» structure|body|string|true|Controlnet structure to condition on|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 795433b19458d0f4fa172a7ccf93178d2adb1cb8ab2ad6c8fdc33fdbcd49f477. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» image_resolution|256|
|»» image_resolution|512|
|»» image_resolution|768|
|»» scheduler|DDIM|
|»» scheduler|DPMSolverMultistep|
|»» scheduler|HeunDiscrete|
|»» scheduler|K_EULER_ANCESTRAL|
|»» scheduler|K_EULER|
|»» scheduler|KLMS|
|»» scheduler|PNDM|
|»» scheduler|UniPCMultistep|
|»» structure|canny|
|»» structure|depth|
|»» structure|hed|
|»» structure|hough|
|»» structure|normal|
|»» structure|pose|
|»» structure|scribble|
|»» structure|seg|

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

