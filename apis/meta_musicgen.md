<!-- Generator: Widdershins v4.0.1 -->

<h1 id="meta_musicgen">meta_musicgen v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Generate music from a prompt or melody

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="meta_musicgen-default">Default</h1>

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
        "classifier_free_guidance": {
          "default": 3,
          "description": "Increases the influence of inputs on the output. Higher values produce lower-varience outputs that adhere more closely to inputs.",
          "type": "integer"
        },
        "continuation": {
          "default": false,
          "description": "If `True`, generated music will continue from `input_audio`. Otherwise, generated music will mimic `input_audio`'s melody.",
          "type": "boolean"
        },
        "continuation_end": {
          "description": "End time of the audio file to use for continuation. If -1 or None, will default to the end of the audio clip.",
          "minimum": 0,
          "type": "integer"
        },
        "continuation_start": {
          "default": 0,
          "description": "Start time of the audio file to use for continuation.",
          "minimum": 0,
          "type": "integer"
        },
        "duration": {
          "default": 8,
          "description": "Duration of the generated audio in seconds.",
          "type": "integer"
        },
        "input_audio": {
          "description": "An audio file that will influence the generated music. If `continuation` is `True`, the generated music will be a continuation of the audio file. Otherwise, the generated music will mimic the audio file's melody.",
          "format": "uri",
          "type": "string"
        },
        "model_version": {
          "default": "stereo-melody-large",
          "description": "Model to use for generation",
          "enum": [
            "stereo-melody-large",
            "stereo-large",
            "melody-large",
            "large"
          ],
          "type": "string"
        },
        "multi_band_diffusion": {
          "default": false,
          "description": "If `True`, the EnCodec tokens will be decoded with MultiBand Diffusion. Only works with non-stereo models.",
          "type": "boolean"
        },
        "normalization_strategy": {
          "default": "loudness",
          "description": "Strategy for normalizing audio.",
          "enum": [
            "loudness",
            "clip",
            "peak",
            "rms"
          ],
          "type": "string"
        },
        "output_format": {
          "default": "wav",
          "description": "Output format for generated audio.",
          "enum": [
            "wav",
            "mp3"
          ],
          "type": "string"
        },
        "prompt": {
          "description": "A description of the music you want to generate.",
          "type": "string"
        },
        "seed": {
          "description": "Seed for random number generator. If None or -1, a random seed will be used.",
          "type": "integer"
        },
        "temperature": {
          "default": 1,
          "description": "Controls the 'conservativeness' of the sampling process. Higher temperature means more diversity.",
          "type": "number"
        },
        "top_k": {
          "default": 250,
          "description": "Reduces sampling to the k most likely tokens.",
          "type": "integer"
        },
        "top_p": {
          "default": 0,
          "description": "Reduces sampling to tokens with cumulative probability of p. When set to  `0` (default), top_k sampling is used.",
          "type": "number"
        }
      },
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 671ac645ce5e552cc63a54a2bbff63fcf798043055d2dac5fc9e36a837eedcfb. The ID of the model version",
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
|»» classifier_free_guidance|body|integer|false|Increases the influence of inputs on the output. Higher values produce lower-varience outputs that adhere more closely to inputs.|
|»» continuation|body|boolean|false|If `True`, generated music will continue from `input_audio`. Otherwise, generated music will mimic `input_audio`'s melody.|
|»» continuation_end|body|integer|false|End time of the audio file to use for continuation. If -1 or None, will default to the end of the audio clip.|
|»» continuation_start|body|integer|false|Start time of the audio file to use for continuation.|
|»» duration|body|integer|false|Duration of the generated audio in seconds.|
|»» input_audio|body|string(uri)|false|An audio file that will influence the generated music. If `continuation` is `True`, the generated music will be a continuation of the audio file. Otherwise, the generated music will mimic the audio file's melody.|
|»» model_version|body|string|false|Model to use for generation|
|»» multi_band_diffusion|body|boolean|false|If `True`, the EnCodec tokens will be decoded with MultiBand Diffusion. Only works with non-stereo models.|
|»» normalization_strategy|body|string|false|Strategy for normalizing audio.|
|»» output_format|body|string|false|Output format for generated audio.|
|»» prompt|body|string|false|A description of the music you want to generate.|
|»» seed|body|integer|false|Seed for random number generator. If None or -1, a random seed will be used.|
|»» temperature|body|number|false|Controls the 'conservativeness' of the sampling process. Higher temperature means more diversity.|
|»» top_k|body|integer|false|Reduces sampling to the k most likely tokens.|
|»» top_p|body|number|false|Reduces sampling to tokens with cumulative probability of p. When set to  `0` (default), top_k sampling is used.|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 671ac645ce5e552cc63a54a2bbff63fcf798043055d2dac5fc9e36a837eedcfb. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» model_version|stereo-melody-large|
|»» model_version|stereo-large|
|»» model_version|melody-large|
|»» model_version|large|
|»» normalization_strategy|loudness|
|»» normalization_strategy|clip|
|»» normalization_strategy|peak|
|»» normalization_strategy|rms|
|»» output_format|wav|
|»» output_format|mp3|

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

