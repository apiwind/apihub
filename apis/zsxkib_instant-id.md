<!-- Generator: Widdershins v4.0.1 -->

<h1 id="zsxkib_instant-id">zsxkib_instant-id v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Make realistic images of real people instantly

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="zsxkib_instant-id-default">Default</h1>

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
        "canny_strength": {
          "default": 0.3,
          "description": "Canny ControlNet strength, effective only if `enable_canny_controlnet` is true",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "controlnet_conditioning_scale": {
          "default": 0.8,
          "description": "Scale for IdentityNet strength (for fidelity)",
          "maximum": 1.5,
          "minimum": 0,
          "type": "number"
        },
        "depth_strength": {
          "default": 0.5,
          "description": "Depth ControlNet strength, effective only if `enable_depth_controlnet` is true",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "disable_safety_checker": {
          "default": false,
          "description": "Disable safety checker for generated images",
          "type": "boolean"
        },
        "enable_canny_controlnet": {
          "default": false,
          "description": "Enable Canny ControlNet, overrides strength if set to false",
          "type": "boolean"
        },
        "enable_depth_controlnet": {
          "default": false,
          "description": "Enable Depth ControlNet, overrides strength if set to false",
          "type": "boolean"
        },
        "enable_lcm": {
          "default": false,
          "description": "Enable Fast Inference with LCM (Latent Consistency Models) - speeds up inference steps, trade-off is the quality of the generated image. Performs better with close-up portrait face images",
          "type": "boolean"
        },
        "enable_pose_controlnet": {
          "default": true,
          "description": "Enable Openpose ControlNet, overrides strength if set to false",
          "type": "boolean"
        },
        "enhance_nonface_region": {
          "default": true,
          "description": "Enhance non-face region",
          "type": "boolean"
        },
        "guidance_scale": {
          "default": 7.5,
          "description": "Scale for classifier-free guidance",
          "maximum": 50,
          "minimum": 1,
          "type": "number"
        },
        "image": {
          "description": "Input face image",
          "format": "uri",
          "type": "string"
        },
        "ip_adapter_scale": {
          "default": 0.8,
          "description": "Scale for image adapter strength (for detail)",
          "maximum": 1.5,
          "minimum": 0,
          "type": "number"
        },
        "lcm_guidance_scale": {
          "default": 1.5,
          "description": "Only used when `enable_lcm` is set to True, Scale for classifier-free guidance when using LCM",
          "maximum": 20,
          "minimum": 1,
          "type": "number"
        },
        "lcm_num_inference_steps": {
          "default": 5,
          "description": "Only used when `enable_lcm` is set to True, Number of denoising steps when using LCM",
          "maximum": 10,
          "minimum": 1,
          "type": "integer"
        },
        "negative_prompt": {
          "default": "",
          "description": "Input Negative Prompt",
          "type": "string"
        },
        "num_inference_steps": {
          "default": 30,
          "description": "Number of denoising steps",
          "maximum": 500,
          "minimum": 1,
          "type": "integer"
        },
        "num_outputs": {
          "default": 1,
          "description": "Number of images to output",
          "maximum": 8,
          "minimum": 1,
          "type": "integer"
        },
        "output_format": {
          "default": "webp",
          "description": "Format of the output images",
          "enum": [
            "webp",
            "jpg",
            "png"
          ],
          "type": "string"
        },
        "output_quality": {
          "default": 80,
          "description": "Quality of the output images, from 0 to 100. 100 is best quality, 0 is lowest quality.",
          "maximum": 100,
          "minimum": 0,
          "type": "integer"
        },
        "pose_image": {
          "description": "(Optional) reference pose image",
          "format": "uri",
          "type": "string"
        },
        "pose_strength": {
          "default": 0.4,
          "description": "Openpose ControlNet strength, effective only if `enable_pose_controlnet` is true",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "prompt": {
          "default": "a person",
          "description": "Input prompt",
          "type": "string"
        },
        "scheduler": {
          "default": "EulerDiscreteScheduler",
          "description": "Scheduler",
          "enum": [
            "DEISMultistepScheduler",
            "HeunDiscreteScheduler",
            "EulerDiscreteScheduler",
            "DPMSolverMultistepScheduler",
            "DPMSolverMultistepScheduler-Karras",
            "DPMSolverMultistepScheduler-Karras-SDE"
          ],
          "type": "string"
        },
        "sdxl_weights": {
          "default": "stable-diffusion-xl-base-1.0",
          "description": "Pick which base weights you want to use",
          "enum": [
            "stable-diffusion-xl-base-1.0",
            "juggernaut-xl-v8",
            "afrodite-xl-v2",
            "albedobase-xl-20",
            "albedobase-xl-v13",
            "animagine-xl-30",
            "anime-art-diffusion-xl",
            "anime-illust-diffusion-xl",
            "dreamshaper-xl",
            "dynavision-xl-v0610",
            "guofeng4-xl",
            "nightvision-xl-0791",
            "omnigen-xl",
            "pony-diffusion-v6-xl",
            "protovision-xl-high-fidel",
            "RealVisXL_V3.0_Turbo",
            "RealVisXL_V4.0_Lightning"
          ],
          "type": "string"
        },
        "seed": {
          "description": "Random seed. Leave blank to randomize the seed",
          "type": "integer"
        }
      },
      "required": [
        "image"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 491ddf5be6b827f8931f088ef10c6d015f6d99685e6454e6f04c8ac298979686. The ID of the model version",
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
|»» canny_strength|body|number|false|Canny ControlNet strength, effective only if `enable_canny_controlnet` is true|
|»» controlnet_conditioning_scale|body|number|false|Scale for IdentityNet strength (for fidelity)|
|»» depth_strength|body|number|false|Depth ControlNet strength, effective only if `enable_depth_controlnet` is true|
|»» disable_safety_checker|body|boolean|false|Disable safety checker for generated images|
|»» enable_canny_controlnet|body|boolean|false|Enable Canny ControlNet, overrides strength if set to false|
|»» enable_depth_controlnet|body|boolean|false|Enable Depth ControlNet, overrides strength if set to false|
|»» enable_lcm|body|boolean|false|Enable Fast Inference with LCM (Latent Consistency Models) - speeds up inference steps, trade-off is the quality of the generated image. Performs better with close-up portrait face images|
|»» enable_pose_controlnet|body|boolean|false|Enable Openpose ControlNet, overrides strength if set to false|
|»» enhance_nonface_region|body|boolean|false|Enhance non-face region|
|»» guidance_scale|body|number|false|Scale for classifier-free guidance|
|»» image|body|string(uri)|true|Input face image|
|»» ip_adapter_scale|body|number|false|Scale for image adapter strength (for detail)|
|»» lcm_guidance_scale|body|number|false|Only used when `enable_lcm` is set to True, Scale for classifier-free guidance when using LCM|
|»» lcm_num_inference_steps|body|integer|false|Only used when `enable_lcm` is set to True, Number of denoising steps when using LCM|
|»» negative_prompt|body|string|false|Input Negative Prompt|
|»» num_inference_steps|body|integer|false|Number of denoising steps|
|»» num_outputs|body|integer|false|Number of images to output|
|»» output_format|body|string|false|Format of the output images|
|»» output_quality|body|integer|false|Quality of the output images, from 0 to 100. 100 is best quality, 0 is lowest quality.|
|»» pose_image|body|string(uri)|false|(Optional) reference pose image|
|»» pose_strength|body|number|false|Openpose ControlNet strength, effective only if `enable_pose_controlnet` is true|
|»» prompt|body|string|false|Input prompt|
|»» scheduler|body|string|false|Scheduler|
|»» sdxl_weights|body|string|false|Pick which base weights you want to use|
|»» seed|body|integer|false|Random seed. Leave blank to randomize the seed|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 491ddf5be6b827f8931f088ef10c6d015f6d99685e6454e6f04c8ac298979686. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» output_format|webp|
|»» output_format|jpg|
|»» output_format|png|
|»» scheduler|DEISMultistepScheduler|
|»» scheduler|HeunDiscreteScheduler|
|»» scheduler|EulerDiscreteScheduler|
|»» scheduler|DPMSolverMultistepScheduler|
|»» scheduler|DPMSolverMultistepScheduler-Karras|
|»» scheduler|DPMSolverMultistepScheduler-Karras-SDE|
|»» sdxl_weights|stable-diffusion-xl-base-1.0|
|»» sdxl_weights|juggernaut-xl-v8|
|»» sdxl_weights|afrodite-xl-v2|
|»» sdxl_weights|albedobase-xl-20|
|»» sdxl_weights|albedobase-xl-v13|
|»» sdxl_weights|animagine-xl-30|
|»» sdxl_weights|anime-art-diffusion-xl|
|»» sdxl_weights|anime-illust-diffusion-xl|
|»» sdxl_weights|dreamshaper-xl|
|»» sdxl_weights|dynavision-xl-v0610|
|»» sdxl_weights|guofeng4-xl|
|»» sdxl_weights|nightvision-xl-0791|
|»» sdxl_weights|omnigen-xl|
|»» sdxl_weights|pony-diffusion-v6-xl|
|»» sdxl_weights|protovision-xl-high-fidel|
|»» sdxl_weights|RealVisXL_V3.0_Turbo|
|»» sdxl_weights|RealVisXL_V4.0_Lightning|

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

