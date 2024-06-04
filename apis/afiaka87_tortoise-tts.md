<!-- Generator: Widdershins v4.0.1 -->

<h1 id="afiaka87_tortoise-tts">afiaka87_tortoise-tts v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Generate speech from text, clone voices from mp3 files. From James Betker AKA "neonbjb".

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="afiaka87_tortoise-tts-default">Default</h1>

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
        "custom_voice": {
          "description": "(Optional) Create a custom voice based on an mp3 file of a speaker. Audio should be at least 15 seconds, only contain one speaker, and be in mp3 format. Overrides the `voice_a` input.",
          "format": "uri",
          "type": "string"
        },
        "cvvp_amount": {
          "default": 0,
          "description": "How much the CVVP model should influence the output. Increasing this can in some cases reduce the likelyhood of multiple speakers. Defaults to 0 (disabled)",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "preset": {
          "default": "fast",
          "description": "Which voice preset to use. See the documentation for more information.",
          "enum": [
            "ultra_fast",
            "fast",
            "standard",
            "high_quality"
          ],
          "type": "string"
        },
        "seed": {
          "default": 0,
          "description": "Random seed which can be used to reproduce results.",
          "type": "integer"
        },
        "text": {
          "default": "The expressiveness of autoregressive transformers is literally nuts! I absolutely adore them.",
          "description": "Text to speak.",
          "type": "string"
        },
        "voice_a": {
          "default": "random",
          "description": "Selects the voice to use for generation. Use `random` to select a random voice. Use `custom_voice` to use a custom voice.",
          "enum": [
            "angie",
            "cond_latent_example",
            "deniro",
            "freeman",
            "halle",
            "lj",
            "myself",
            "pat2",
            "snakes",
            "tom",
            "train_daws",
            "train_dreams",
            "train_grace",
            "train_lescault",
            "weaver",
            "applejack",
            "daniel",
            "emma",
            "geralt",
            "jlaw",
            "mol",
            "pat",
            "rainbow",
            "tim_reynolds",
            "train_atkins",
            "train_dotrice",
            "train_empire",
            "train_kennard",
            "train_mouse",
            "william",
            "random",
            "custom_voice",
            "disabled"
          ],
          "type": "string"
        },
        "voice_b": {
          "default": "disabled",
          "description": "(Optional) Create new voice from averaging the latents for `voice_a`, `voice_b` and `voice_c`. Use `disabled` to disable voice mixing.",
          "enum": [
            "angie",
            "cond_latent_example",
            "deniro",
            "freeman",
            "halle",
            "lj",
            "myself",
            "pat2",
            "snakes",
            "tom",
            "train_daws",
            "train_dreams",
            "train_grace",
            "train_lescault",
            "weaver",
            "applejack",
            "daniel",
            "emma",
            "geralt",
            "jlaw",
            "mol",
            "pat",
            "rainbow",
            "tim_reynolds",
            "train_atkins",
            "train_dotrice",
            "train_empire",
            "train_kennard",
            "train_mouse",
            "william",
            "random",
            "custom_voice",
            "disabled"
          ],
          "type": "string"
        },
        "voice_c": {
          "default": "disabled",
          "description": "(Optional) Create new voice from averaging the latents for `voice_a`, `voice_b` and `voice_c`. Use `disabled` to disable voice mixing.",
          "enum": [
            "angie",
            "cond_latent_example",
            "deniro",
            "freeman",
            "halle",
            "lj",
            "myself",
            "pat2",
            "snakes",
            "tom",
            "train_daws",
            "train_dreams",
            "train_grace",
            "train_lescault",
            "weaver",
            "applejack",
            "daniel",
            "emma",
            "geralt",
            "jlaw",
            "mol",
            "pat",
            "rainbow",
            "tim_reynolds",
            "train_atkins",
            "train_dotrice",
            "train_empire",
            "train_kennard",
            "train_mouse",
            "william",
            "random",
            "custom_voice",
            "disabled"
          ],
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
      "description": "Eg: e9658de4b325863c4fcdc12d94bb7c9b54cbfe351b7ca1b36860008172b91c71. The ID of the model version",
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
|»» custom_voice|body|string(uri)|false|(Optional) Create a custom voice based on an mp3 file of a speaker. Audio should be at least 15 seconds, only contain one speaker, and be in mp3 format. Overrides the `voice_a` input.|
|»» cvvp_amount|body|number|false|How much the CVVP model should influence the output. Increasing this can in some cases reduce the likelyhood of multiple speakers. Defaults to 0 (disabled)|
|»» preset|body|string|false|Which voice preset to use. See the documentation for more information.|
|»» seed|body|integer|false|Random seed which can be used to reproduce results.|
|»» text|body|string|false|Text to speak.|
|»» voice_a|body|string|false|Selects the voice to use for generation. Use `random` to select a random voice. Use `custom_voice` to use a custom voice.|
|»» voice_b|body|string|false|(Optional) Create new voice from averaging the latents for `voice_a`, `voice_b` and `voice_c`. Use `disabled` to disable voice mixing.|
|»» voice_c|body|string|false|(Optional) Create new voice from averaging the latents for `voice_a`, `voice_b` and `voice_c`. Use `disabled` to disable voice mixing.|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: e9658de4b325863c4fcdc12d94bb7c9b54cbfe351b7ca1b36860008172b91c71. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» preset|ultra_fast|
|»» preset|fast|
|»» preset|standard|
|»» preset|high_quality|
|»» voice_a|angie|
|»» voice_a|cond_latent_example|
|»» voice_a|deniro|
|»» voice_a|freeman|
|»» voice_a|halle|
|»» voice_a|lj|
|»» voice_a|myself|
|»» voice_a|pat2|
|»» voice_a|snakes|
|»» voice_a|tom|
|»» voice_a|train_daws|
|»» voice_a|train_dreams|
|»» voice_a|train_grace|
|»» voice_a|train_lescault|
|»» voice_a|weaver|
|»» voice_a|applejack|
|»» voice_a|daniel|
|»» voice_a|emma|
|»» voice_a|geralt|
|»» voice_a|jlaw|
|»» voice_a|mol|
|»» voice_a|pat|
|»» voice_a|rainbow|
|»» voice_a|tim_reynolds|
|»» voice_a|train_atkins|
|»» voice_a|train_dotrice|
|»» voice_a|train_empire|
|»» voice_a|train_kennard|
|»» voice_a|train_mouse|
|»» voice_a|william|
|»» voice_a|random|
|»» voice_a|custom_voice|
|»» voice_a|disabled|
|»» voice_b|angie|
|»» voice_b|cond_latent_example|
|»» voice_b|deniro|
|»» voice_b|freeman|
|»» voice_b|halle|
|»» voice_b|lj|
|»» voice_b|myself|
|»» voice_b|pat2|
|»» voice_b|snakes|
|»» voice_b|tom|
|»» voice_b|train_daws|
|»» voice_b|train_dreams|
|»» voice_b|train_grace|
|»» voice_b|train_lescault|
|»» voice_b|weaver|
|»» voice_b|applejack|
|»» voice_b|daniel|
|»» voice_b|emma|
|»» voice_b|geralt|
|»» voice_b|jlaw|
|»» voice_b|mol|
|»» voice_b|pat|
|»» voice_b|rainbow|
|»» voice_b|tim_reynolds|
|»» voice_b|train_atkins|
|»» voice_b|train_dotrice|
|»» voice_b|train_empire|
|»» voice_b|train_kennard|
|»» voice_b|train_mouse|
|»» voice_b|william|
|»» voice_b|random|
|»» voice_b|custom_voice|
|»» voice_b|disabled|
|»» voice_c|angie|
|»» voice_c|cond_latent_example|
|»» voice_c|deniro|
|»» voice_c|freeman|
|»» voice_c|halle|
|»» voice_c|lj|
|»» voice_c|myself|
|»» voice_c|pat2|
|»» voice_c|snakes|
|»» voice_c|tom|
|»» voice_c|train_daws|
|»» voice_c|train_dreams|
|»» voice_c|train_grace|
|»» voice_c|train_lescault|
|»» voice_c|weaver|
|»» voice_c|applejack|
|»» voice_c|daniel|
|»» voice_c|emma|
|»» voice_c|geralt|
|»» voice_c|jlaw|
|»» voice_c|mol|
|»» voice_c|pat|
|»» voice_c|rainbow|
|»» voice_c|tim_reynolds|
|»» voice_c|train_atkins|
|»» voice_c|train_dotrice|
|»» voice_c|train_empire|
|»» voice_c|train_kennard|
|»» voice_c|train_mouse|
|»» voice_c|william|
|»» voice_c|random|
|»» voice_c|custom_voice|
|»» voice_c|disabled|

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

