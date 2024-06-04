<!-- Generator: Widdershins v4.0.1 -->

<h1 id="zsxkib_realistic-voice-cloning">zsxkib_realistic-voice-cloning v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Create song covers with any RVC v2 trained AI voice from audio files.

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="zsxkib_realistic-voice-cloning-default">Default</h1>

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
        "backup_vocals_volume_change": {
          "default": 0,
          "description": "Control volume of backup AI vocals.",
          "type": "number"
        },
        "crepe_hop_length": {
          "default": 128,
          "description": "When `pitch_detection_algo` is set to `mangio-crepe`, this controls how often it checks for pitch changes in milliseconds. Lower values lead to longer conversions and higher risk of voice cracks, but better pitch accuracy.",
          "type": "integer"
        },
        "custom_rvc_model_download_url": {
          "description": "URL to download a custom RVC model. If provided, the model will be downloaded (if it doesn't already exist) and used for prediction, regardless of the 'rvc_model' value.",
          "type": "string"
        },
        "filter_radius": {
          "default": 3,
          "description": "If >=3: apply median filtering median filtering to the harvested pitch results.",
          "maximum": 7,
          "minimum": 0,
          "type": "integer"
        },
        "index_rate": {
          "default": 0.5,
          "description": "Control how much of the AI's accent to leave in the vocals.",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "instrumental_volume_change": {
          "default": 0,
          "description": "Control volume of the background music/instrumentals.",
          "type": "number"
        },
        "main_vocals_volume_change": {
          "default": 0,
          "description": "Control volume of main AI vocals. Use -3 to decrease the volume by 3 decibels, or 3 to increase the volume by 3 decibels.",
          "type": "number"
        },
        "output_format": {
          "default": "mp3",
          "description": "wav for best quality and large file size, mp3 for decent quality and small file size.",
          "enum": [
            "mp3",
            "wav"
          ],
          "type": "string"
        },
        "pitch_change": {
          "default": "no-change",
          "description": "Adjust pitch of AI vocals. Options: `no-change`, `male-to-female`, `female-to-male`.",
          "enum": [
            "no-change",
            "male-to-female",
            "female-to-male"
          ],
          "type": "string"
        },
        "pitch_change_all": {
          "default": 0,
          "description": "Change pitch/key of background music, backup vocals and AI vocals in semitones. Reduces sound quality slightly.",
          "type": "number"
        },
        "pitch_detection_algorithm": {
          "default": "rmvpe",
          "description": "Best option is rmvpe (clarity in vocals), then mangio-crepe (smoother vocals).",
          "enum": [
            "rmvpe",
            "mangio-crepe"
          ],
          "type": "string"
        },
        "protect": {
          "default": 0.33,
          "description": "Control how much of the original vocals' breath and voiceless consonants to leave in the AI vocals. Set 0.5 to disable.",
          "maximum": 0.5,
          "minimum": 0,
          "type": "number"
        },
        "reverb_damping": {
          "default": 0.7,
          "description": "Absorption of high frequencies in the reverb.",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "reverb_dryness": {
          "default": 0.8,
          "description": "Level of AI vocals without reverb.",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "reverb_size": {
          "default": 0.15,
          "description": "The larger the room, the longer the reverb time.",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "reverb_wetness": {
          "default": 0.2,
          "description": "Level of AI vocals with reverb.",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "rms_mix_rate": {
          "default": 0.25,
          "description": "Control how much to use the original vocal's loudness (0) or a fixed loudness (1).",
          "maximum": 1,
          "minimum": 0,
          "type": "number"
        },
        "rvc_model": {
          "default": "Squidward",
          "description": "RVC model for a specific voice. If using a custom model, this should match the name of the downloaded model. If a 'custom_rvc_model_download_url' is provided, this will be automatically set to the name of the downloaded model.",
          "enum": [
            "Squidward",
            "MrKrabs",
            "Plankton",
            "Drake",
            "Vader",
            "Trump",
            "Biden",
            "Obama",
            "Guitar",
            "Voilin",
            "CUSTOM"
          ],
          "type": "string"
        },
        "song_input": {
          "description": "Upload your audio file here.",
          "format": "uri",
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
      "description": "Eg: 0a9c7c558af4c0f20667c1bd1260ce32a2879944a0b9e44e1398660c077b1550. The ID of the model version",
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
|»» backup_vocals_volume_change|body|number|false|Control volume of backup AI vocals.|
|»» crepe_hop_length|body|integer|false|When `pitch_detection_algo` is set to `mangio-crepe`, this controls how often it checks for pitch changes in milliseconds. Lower values lead to longer conversions and higher risk of voice cracks, but better pitch accuracy.|
|»» custom_rvc_model_download_url|body|string|false|URL to download a custom RVC model. If provided, the model will be downloaded (if it doesn't already exist) and used for prediction, regardless of the 'rvc_model' value.|
|»» filter_radius|body|integer|false|If >=3: apply median filtering median filtering to the harvested pitch results.|
|»» index_rate|body|number|false|Control how much of the AI's accent to leave in the vocals.|
|»» instrumental_volume_change|body|number|false|Control volume of the background music/instrumentals.|
|»» main_vocals_volume_change|body|number|false|Control volume of main AI vocals. Use -3 to decrease the volume by 3 decibels, or 3 to increase the volume by 3 decibels.|
|»» output_format|body|string|false|wav for best quality and large file size, mp3 for decent quality and small file size.|
|»» pitch_change|body|string|false|Adjust pitch of AI vocals. Options: `no-change`, `male-to-female`, `female-to-male`.|
|»» pitch_change_all|body|number|false|Change pitch/key of background music, backup vocals and AI vocals in semitones. Reduces sound quality slightly.|
|»» pitch_detection_algorithm|body|string|false|Best option is rmvpe (clarity in vocals), then mangio-crepe (smoother vocals).|
|»» protect|body|number|false|Control how much of the original vocals' breath and voiceless consonants to leave in the AI vocals. Set 0.5 to disable.|
|»» reverb_damping|body|number|false|Absorption of high frequencies in the reverb.|
|»» reverb_dryness|body|number|false|Level of AI vocals without reverb.|
|»» reverb_size|body|number|false|The larger the room, the longer the reverb time.|
|»» reverb_wetness|body|number|false|Level of AI vocals with reverb.|
|»» rms_mix_rate|body|number|false|Control how much to use the original vocal's loudness (0) or a fixed loudness (1).|
|»» rvc_model|body|string|false|RVC model for a specific voice. If using a custom model, this should match the name of the downloaded model. If a 'custom_rvc_model_download_url' is provided, this will be automatically set to the name of the downloaded model.|
|»» song_input|body|string(uri)|false|Upload your audio file here.|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 0a9c7c558af4c0f20667c1bd1260ce32a2879944a0b9e44e1398660c077b1550. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» output_format|mp3|
|»» output_format|wav|
|»» pitch_change|no-change|
|»» pitch_change|male-to-female|
|»» pitch_change|female-to-male|
|»» pitch_detection_algorithm|rmvpe|
|»» pitch_detection_algorithm|mangio-crepe|
|»» rvc_model|Squidward|
|»» rvc_model|MrKrabs|
|»» rvc_model|Plankton|
|»» rvc_model|Drake|
|»» rvc_model|Vader|
|»» rvc_model|Trump|
|»» rvc_model|Biden|
|»» rvc_model|Obama|
|»» rvc_model|Guitar|
|»» rvc_model|Voilin|
|»» rvc_model|CUSTOM|

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

