<!-- Generator: Widdershins v4.0.1 -->

<h1 id="andreasjansson_stable-diffusion-animation">andreasjansson_stable-diffusion-animation v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Animate Stable Diffusion by interpolating between two prompts

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="andreasjansson_stable-diffusion-animation-default">Default</h1>

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
        "film_interpolation": {
          "default": true,
          "description": "Whether to use FILM for between-frame interpolation (film-net.github.io)",
          "type": "boolean"
        },
        "gif_frames_per_second": {
          "default": 20,
          "description": "Frames/second in output GIF",
          "maximum": 50,
          "minimum": 1,
          "type": "integer"
        },
        "gif_ping_pong": {
          "default": false,
          "description": "Whether to reverse the animation and go back to the beginning before looping",
          "type": "boolean"
        },
        "guidance_scale": {
          "default": 7.5,
          "description": "Scale for classifier-free guidance",
          "maximum": 20,
          "minimum": 1,
          "type": "number"
        },
        "height": {
          "default": 512,
          "description": "Height of output image",
          "enum": [
            128,
            256,
            512,
            768
          ],
          "type": "integer"
        },
        "intermediate_output": {
          "default": false,
          "description": "Whether to display intermediate outputs during generation",
          "type": "boolean"
        },
        "num_animation_frames": {
          "default": 10,
          "description": "Number of frames to animate",
          "maximum": 50,
          "minimum": 2,
          "type": "integer"
        },
        "num_inference_steps": {
          "default": 50,
          "description": "Number of denoising steps",
          "maximum": 500,
          "minimum": 1,
          "type": "integer"
        },
        "num_interpolation_steps": {
          "default": 5,
          "description": "Number of steps to interpolate between animation frames",
          "maximum": 50,
          "minimum": 1,
          "type": "integer"
        },
        "output_format": {
          "default": "gif",
          "description": "Output file format",
          "enum": [
            "gif",
            "mp4"
          ],
          "type": "string"
        },
        "prompt_end": {
          "description": "Prompt to end the animation with. You can include multiple prompts by separating the prompts with | (the 'pipe' character)",
          "type": "string"
        },
        "prompt_start": {
          "description": "Prompt to start the animation with",
          "type": "string"
        },
        "prompt_strength": {
          "default": 0.8,
          "description": "Lower prompt strength generates more coherent gifs, higher respects prompts more but can be jumpy",
          "type": "number"
        },
        "seed": {
          "description": "Random seed. Leave blank to randomize the seed",
          "type": "integer"
        },
        "width": {
          "default": 512,
          "description": "Width of output image",
          "enum": [
            128,
            256,
            512,
            768,
            1024
          ],
          "type": "integer"
        }
      },
      "required": [
        "prompt_end",
        "prompt_start"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: ca1f5e306e5721e19c473e0d094e6603f0456fe759c10715fcd6c1b79242d4a5. The ID of the model version",
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
|»» film_interpolation|body|boolean|false|Whether to use FILM for between-frame interpolation (film-net.github.io)|
|»» gif_frames_per_second|body|integer|false|Frames/second in output GIF|
|»» gif_ping_pong|body|boolean|false|Whether to reverse the animation and go back to the beginning before looping|
|»» guidance_scale|body|number|false|Scale for classifier-free guidance|
|»» height|body|integer|false|Height of output image|
|»» intermediate_output|body|boolean|false|Whether to display intermediate outputs during generation|
|»» num_animation_frames|body|integer|false|Number of frames to animate|
|»» num_inference_steps|body|integer|false|Number of denoising steps|
|»» num_interpolation_steps|body|integer|false|Number of steps to interpolate between animation frames|
|»» output_format|body|string|false|Output file format|
|»» prompt_end|body|string|true|Prompt to end the animation with. You can include multiple prompts by separating the prompts with | (the 'pipe' character)|
|»» prompt_start|body|string|true|Prompt to start the animation with|
|»» prompt_strength|body|number|false|Lower prompt strength generates more coherent gifs, higher respects prompts more but can be jumpy|
|»» seed|body|integer|false|Random seed. Leave blank to randomize the seed|
|»» width|body|integer|false|Width of output image|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: ca1f5e306e5721e19c473e0d094e6603f0456fe759c10715fcd6c1b79242d4a5. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» height|128|
|»» height|256|
|»» height|512|
|»» height|768|
|»» output_format|gif|
|»» output_format|mp4|
|»» width|128|
|»» width|256|
|»» width|512|
|»» width|768|
|»» width|1024|

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

