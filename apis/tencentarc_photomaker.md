<!-- Generator: Widdershins v4.0.1 -->

<h1 id="tencentarc_photomaker">tencentarc_photomaker v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Create photos, paintings and avatars for anyone in any style within seconds.

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="tencentarc_photomaker-default">Default</h1>

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
        "disable_safety_checker": {
          "default": false,
          "description": "Disable safety checker for generated images.",
          "type": "boolean"
        },
        "guidance_scale": {
          "default": 5,
          "description": "Guidance scale. A guidance scale of 1 corresponds to doing no classifier free guidance.",
          "maximum": 10,
          "minimum": 1,
          "type": "number"
        },
        "input_image": {
          "description": "The input image, for example a photo of your face.",
          "format": "uri",
          "type": "string"
        },
        "input_image2": {
          "description": "Additional input image (optional)",
          "format": "uri",
          "type": "string"
        },
        "input_image3": {
          "description": "Additional input image (optional)",
          "format": "uri",
          "type": "string"
        },
        "input_image4": {
          "description": "Additional input image (optional)",
          "format": "uri",
          "type": "string"
        },
        "negative_prompt": {
          "default": "nsfw, lowres, bad anatomy, bad hands, text, error, missing fingers, extra digit, fewer digits, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry",
          "description": "Negative Prompt. The negative prompt should NOT contain the trigger word.",
          "type": "string"
        },
        "num_outputs": {
          "default": 1,
          "description": "Number of output images",
          "maximum": 4,
          "minimum": 1,
          "type": "integer"
        },
        "num_steps": {
          "default": 20,
          "description": "Number of sample steps",
          "maximum": 100,
          "minimum": 1,
          "type": "integer"
        },
        "prompt": {
          "default": "A photo of a person img",
          "description": "Prompt. Example: 'a photo of a man/woman img'. The phrase 'img' is the trigger word.",
          "type": "string"
        },
        "seed": {
          "description": "Seed. Leave blank to use a random number",
          "maximum": 2147483647,
          "minimum": 0,
          "type": "integer"
        },
        "style_name": {
          "default": "Photographic (Default)",
          "description": "Style template. The style template will add a style-specific prompt and negative prompt to the user's prompt.",
          "enum": [
            "(No style)",
            "Cinematic",
            "Disney Charactor",
            "Digital Art",
            "Photographic (Default)",
            "Fantasy art",
            "Neonpunk",
            "Enhance",
            "Comic book",
            "Lowpoly",
            "Line art"
          ],
          "type": "string"
        },
        "style_strength_ratio": {
          "default": 20,
          "description": "Style strength (%)",
          "maximum": 50,
          "minimum": 15,
          "type": "number"
        }
      },
      "required": [
        "input_image"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: ddfc2b08d209f9fa8c1eca692712918bd449f695dabb4a958da31802a9570fe4. The ID of the model version",
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
|»» disable_safety_checker|body|boolean|false|Disable safety checker for generated images.|
|»» guidance_scale|body|number|false|Guidance scale. A guidance scale of 1 corresponds to doing no classifier free guidance.|
|»» input_image|body|string(uri)|true|The input image, for example a photo of your face.|
|»» input_image2|body|string(uri)|false|Additional input image (optional)|
|»» input_image3|body|string(uri)|false|Additional input image (optional)|
|»» input_image4|body|string(uri)|false|Additional input image (optional)|
|»» negative_prompt|body|string|false|Negative Prompt. The negative prompt should NOT contain the trigger word.|
|»» num_outputs|body|integer|false|Number of output images|
|»» num_steps|body|integer|false|Number of sample steps|
|»» prompt|body|string|false|Prompt. Example: 'a photo of a man/woman img'. The phrase 'img' is the trigger word.|
|»» seed|body|integer|false|Seed. Leave blank to use a random number|
|»» style_name|body|string|false|Style template. The style template will add a style-specific prompt and negative prompt to the user's prompt.|
|»» style_strength_ratio|body|number|false|Style strength (%)|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: ddfc2b08d209f9fa8c1eca692712918bd449f695dabb4a958da31802a9570fe4. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» style_name|(No style)|
|»» style_name|Cinematic|
|»» style_name|Disney Charactor|
|»» style_name|Digital Art|
|»» style_name|Photographic (Default)|
|»» style_name|Fantasy art|
|»» style_name|Neonpunk|
|»» style_name|Enhance|
|»» style_name|Comic book|
|»» style_name|Lowpoly|
|»» style_name|Line art|

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

