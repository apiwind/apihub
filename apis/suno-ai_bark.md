<!-- Generator: Widdershins v4.0.1 -->

<h1 id="suno-ai_bark">suno-ai_bark v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

🔊 Text-Prompted Generative Audio Model

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="suno-ai_bark-default">Default</h1>

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
        "custom_history_prompt": {
          "description": "Provide your own .npz file with history choice for audio cloning, this will override the previous history_prompt setting",
          "format": "uri",
          "type": "string"
        },
        "history_prompt": {
          "description": "history choice for audio cloning, choose from the list",
          "enum": [
            "announcer",
            "de_speaker_0",
            "de_speaker_1",
            "de_speaker_2",
            "de_speaker_3",
            "de_speaker_4",
            "de_speaker_5",
            "de_speaker_6",
            "de_speaker_7",
            "de_speaker_8",
            "de_speaker_9",
            "en_speaker_0",
            "en_speaker_1",
            "en_speaker_2",
            "en_speaker_3",
            "en_speaker_4",
            "en_speaker_5",
            "en_speaker_6",
            "en_speaker_7",
            "en_speaker_8",
            "en_speaker_9",
            "es_speaker_0",
            "es_speaker_1",
            "es_speaker_2",
            "es_speaker_3",
            "es_speaker_4",
            "es_speaker_5",
            "es_speaker_6",
            "es_speaker_7",
            "es_speaker_8",
            "es_speaker_9",
            "fr_speaker_0",
            "fr_speaker_1",
            "fr_speaker_2",
            "fr_speaker_3",
            "fr_speaker_4",
            "fr_speaker_5",
            "fr_speaker_6",
            "fr_speaker_7",
            "fr_speaker_8",
            "fr_speaker_9",
            "hi_speaker_0",
            "hi_speaker_1",
            "hi_speaker_2",
            "hi_speaker_3",
            "hi_speaker_4",
            "hi_speaker_5",
            "hi_speaker_6",
            "hi_speaker_7",
            "hi_speaker_8",
            "hi_speaker_9",
            "it_speaker_0",
            "it_speaker_1",
            "it_speaker_2",
            "it_speaker_3",
            "it_speaker_4",
            "it_speaker_5",
            "it_speaker_6",
            "it_speaker_7",
            "it_speaker_8",
            "it_speaker_9",
            "ja_speaker_0",
            "ja_speaker_1",
            "ja_speaker_2",
            "ja_speaker_3",
            "ja_speaker_4",
            "ja_speaker_5",
            "ja_speaker_6",
            "ja_speaker_7",
            "ja_speaker_8",
            "ja_speaker_9",
            "ko_speaker_0",
            "ko_speaker_1",
            "ko_speaker_2",
            "ko_speaker_3",
            "ko_speaker_4",
            "ko_speaker_5",
            "ko_speaker_6",
            "ko_speaker_7",
            "ko_speaker_8",
            "ko_speaker_9",
            "pl_speaker_0",
            "pl_speaker_1",
            "pl_speaker_2",
            "pl_speaker_3",
            "pl_speaker_4",
            "pl_speaker_5",
            "pl_speaker_6",
            "pl_speaker_7",
            "pl_speaker_8",
            "pl_speaker_9",
            "pt_speaker_0",
            "pt_speaker_1",
            "pt_speaker_2",
            "pt_speaker_3",
            "pt_speaker_4",
            "pt_speaker_5",
            "pt_speaker_6",
            "pt_speaker_7",
            "pt_speaker_8",
            "pt_speaker_9",
            "ru_speaker_0",
            "ru_speaker_1",
            "ru_speaker_2",
            "ru_speaker_3",
            "ru_speaker_4",
            "ru_speaker_5",
            "ru_speaker_6",
            "ru_speaker_7",
            "ru_speaker_8",
            "ru_speaker_9",
            "tr_speaker_0",
            "tr_speaker_1",
            "tr_speaker_2",
            "tr_speaker_3",
            "tr_speaker_4",
            "tr_speaker_5",
            "tr_speaker_6",
            "tr_speaker_7",
            "tr_speaker_8",
            "tr_speaker_9",
            "zh_speaker_0",
            "zh_speaker_1",
            "zh_speaker_2",
            "zh_speaker_3",
            "zh_speaker_4",
            "zh_speaker_5",
            "zh_speaker_6",
            "zh_speaker_7",
            "zh_speaker_8",
            "zh_speaker_9"
          ],
          "type": "string"
        },
        "output_full": {
          "default": false,
          "description": "return full generation as a .npz file to be used as a history prompt",
          "type": "boolean"
        },
        "prompt": {
          "default": "Hello, my name is Suno. And, uh — and I like pizza. [laughs] But I also have other interests such as playing tic tac toe.",
          "description": "Input prompt",
          "type": "string"
        },
        "text_temp": {
          "default": 0.7,
          "description": "generation temperature (1.0 more diverse, 0.0 more conservative)",
          "type": "number"
        },
        "waveform_temp": {
          "default": 0.7,
          "description": "generation temperature (1.0 more diverse, 0.0 more conservative)",
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
      "description": "Eg: b76242b40d67c76ab6742e987628a2a9ac019e11d56ab96c4e91ce03b79b2787. The ID of the model version",
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
|»» custom_history_prompt|body|string(uri)|false|Provide your own .npz file with history choice for audio cloning, this will override the previous history_prompt setting|
|»» history_prompt|body|string|false|history choice for audio cloning, choose from the list|
|»» output_full|body|boolean|false|return full generation as a .npz file to be used as a history prompt|
|»» prompt|body|string|false|Input prompt|
|»» text_temp|body|number|false|generation temperature (1.0 more diverse, 0.0 more conservative)|
|»» waveform_temp|body|number|false|generation temperature (1.0 more diverse, 0.0 more conservative)|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: b76242b40d67c76ab6742e987628a2a9ac019e11d56ab96c4e91ce03b79b2787. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» history_prompt|announcer|
|»» history_prompt|de_speaker_0|
|»» history_prompt|de_speaker_1|
|»» history_prompt|de_speaker_2|
|»» history_prompt|de_speaker_3|
|»» history_prompt|de_speaker_4|
|»» history_prompt|de_speaker_5|
|»» history_prompt|de_speaker_6|
|»» history_prompt|de_speaker_7|
|»» history_prompt|de_speaker_8|
|»» history_prompt|de_speaker_9|
|»» history_prompt|en_speaker_0|
|»» history_prompt|en_speaker_1|
|»» history_prompt|en_speaker_2|
|»» history_prompt|en_speaker_3|
|»» history_prompt|en_speaker_4|
|»» history_prompt|en_speaker_5|
|»» history_prompt|en_speaker_6|
|»» history_prompt|en_speaker_7|
|»» history_prompt|en_speaker_8|
|»» history_prompt|en_speaker_9|
|»» history_prompt|es_speaker_0|
|»» history_prompt|es_speaker_1|
|»» history_prompt|es_speaker_2|
|»» history_prompt|es_speaker_3|
|»» history_prompt|es_speaker_4|
|»» history_prompt|es_speaker_5|
|»» history_prompt|es_speaker_6|
|»» history_prompt|es_speaker_7|
|»» history_prompt|es_speaker_8|
|»» history_prompt|es_speaker_9|
|»» history_prompt|fr_speaker_0|
|»» history_prompt|fr_speaker_1|
|»» history_prompt|fr_speaker_2|
|»» history_prompt|fr_speaker_3|
|»» history_prompt|fr_speaker_4|
|»» history_prompt|fr_speaker_5|
|»» history_prompt|fr_speaker_6|
|»» history_prompt|fr_speaker_7|
|»» history_prompt|fr_speaker_8|
|»» history_prompt|fr_speaker_9|
|»» history_prompt|hi_speaker_0|
|»» history_prompt|hi_speaker_1|
|»» history_prompt|hi_speaker_2|
|»» history_prompt|hi_speaker_3|
|»» history_prompt|hi_speaker_4|
|»» history_prompt|hi_speaker_5|
|»» history_prompt|hi_speaker_6|
|»» history_prompt|hi_speaker_7|
|»» history_prompt|hi_speaker_8|
|»» history_prompt|hi_speaker_9|
|»» history_prompt|it_speaker_0|
|»» history_prompt|it_speaker_1|
|»» history_prompt|it_speaker_2|
|»» history_prompt|it_speaker_3|
|»» history_prompt|it_speaker_4|
|»» history_prompt|it_speaker_5|
|»» history_prompt|it_speaker_6|
|»» history_prompt|it_speaker_7|
|»» history_prompt|it_speaker_8|
|»» history_prompt|it_speaker_9|
|»» history_prompt|ja_speaker_0|
|»» history_prompt|ja_speaker_1|
|»» history_prompt|ja_speaker_2|
|»» history_prompt|ja_speaker_3|
|»» history_prompt|ja_speaker_4|
|»» history_prompt|ja_speaker_5|
|»» history_prompt|ja_speaker_6|
|»» history_prompt|ja_speaker_7|
|»» history_prompt|ja_speaker_8|
|»» history_prompt|ja_speaker_9|
|»» history_prompt|ko_speaker_0|
|»» history_prompt|ko_speaker_1|
|»» history_prompt|ko_speaker_2|
|»» history_prompt|ko_speaker_3|
|»» history_prompt|ko_speaker_4|
|»» history_prompt|ko_speaker_5|
|»» history_prompt|ko_speaker_6|
|»» history_prompt|ko_speaker_7|
|»» history_prompt|ko_speaker_8|
|»» history_prompt|ko_speaker_9|
|»» history_prompt|pl_speaker_0|
|»» history_prompt|pl_speaker_1|
|»» history_prompt|pl_speaker_2|
|»» history_prompt|pl_speaker_3|
|»» history_prompt|pl_speaker_4|
|»» history_prompt|pl_speaker_5|
|»» history_prompt|pl_speaker_6|
|»» history_prompt|pl_speaker_7|
|»» history_prompt|pl_speaker_8|
|»» history_prompt|pl_speaker_9|
|»» history_prompt|pt_speaker_0|
|»» history_prompt|pt_speaker_1|
|»» history_prompt|pt_speaker_2|
|»» history_prompt|pt_speaker_3|
|»» history_prompt|pt_speaker_4|
|»» history_prompt|pt_speaker_5|
|»» history_prompt|pt_speaker_6|
|»» history_prompt|pt_speaker_7|
|»» history_prompt|pt_speaker_8|
|»» history_prompt|pt_speaker_9|
|»» history_prompt|ru_speaker_0|
|»» history_prompt|ru_speaker_1|
|»» history_prompt|ru_speaker_2|
|»» history_prompt|ru_speaker_3|
|»» history_prompt|ru_speaker_4|
|»» history_prompt|ru_speaker_5|
|»» history_prompt|ru_speaker_6|
|»» history_prompt|ru_speaker_7|
|»» history_prompt|ru_speaker_8|
|»» history_prompt|ru_speaker_9|
|»» history_prompt|tr_speaker_0|
|»» history_prompt|tr_speaker_1|
|»» history_prompt|tr_speaker_2|
|»» history_prompt|tr_speaker_3|
|»» history_prompt|tr_speaker_4|
|»» history_prompt|tr_speaker_5|
|»» history_prompt|tr_speaker_6|
|»» history_prompt|tr_speaker_7|
|»» history_prompt|tr_speaker_8|
|»» history_prompt|tr_speaker_9|
|»» history_prompt|zh_speaker_0|
|»» history_prompt|zh_speaker_1|
|»» history_prompt|zh_speaker_2|
|»» history_prompt|zh_speaker_3|
|»» history_prompt|zh_speaker_4|
|»» history_prompt|zh_speaker_5|
|»» history_prompt|zh_speaker_6|
|»» history_prompt|zh_speaker_7|
|»» history_prompt|zh_speaker_8|
|»» history_prompt|zh_speaker_9|

> Example responses

> 200 Response

```json
{
  "type": "object"
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

