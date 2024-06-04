<!-- Generator: Widdershins v4.0.1 -->

<h1 id="openai_whisper">openai_whisper v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Convert speech in audio to text

Base URLs:

* <a href="https://api.replicate.com">https://api.replicate.com</a>

<h1 id="openai_whisper-default">Default</h1>

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
        "audio": {
          "description": "Audio file",
          "format": "uri",
          "type": "string"
        },
        "compression_ratio_threshold": {
          "default": 2.4,
          "description": "if the gzip compression ratio is higher than this value, treat the decoding as failed",
          "type": "number"
        },
        "condition_on_previous_text": {
          "default": true,
          "description": "if True, provide the previous output of the model as a prompt for the next window; disabling may make the text inconsistent across windows, but the model becomes less prone to getting stuck in a failure loop",
          "type": "boolean"
        },
        "initial_prompt": {
          "description": "optional text to provide as a prompt for the first window.",
          "type": "string"
        },
        "language": {
          "description": "language spoken in the audio, specify None to perform language detection",
          "enum": [
            "af",
            "am",
            "ar",
            "as",
            "az",
            "ba",
            "be",
            "bg",
            "bn",
            "bo",
            "br",
            "bs",
            "ca",
            "cs",
            "cy",
            "da",
            "de",
            "el",
            "en",
            "es",
            "et",
            "eu",
            "fa",
            "fi",
            "fo",
            "fr",
            "gl",
            "gu",
            "ha",
            "haw",
            "he",
            "hi",
            "hr",
            "ht",
            "hu",
            "hy",
            "id",
            "is",
            "it",
            "ja",
            "jw",
            "ka",
            "kk",
            "km",
            "kn",
            "ko",
            "la",
            "lb",
            "ln",
            "lo",
            "lt",
            "lv",
            "mg",
            "mi",
            "mk",
            "ml",
            "mn",
            "mr",
            "ms",
            "mt",
            "my",
            "ne",
            "nl",
            "nn",
            "no",
            "oc",
            "pa",
            "pl",
            "ps",
            "pt",
            "ro",
            "ru",
            "sa",
            "sd",
            "si",
            "sk",
            "sl",
            "sn",
            "so",
            "sq",
            "sr",
            "su",
            "sv",
            "sw",
            "ta",
            "te",
            "tg",
            "th",
            "tk",
            "tl",
            "tr",
            "tt",
            "uk",
            "ur",
            "uz",
            "vi",
            "yi",
            "yo",
            "yue",
            "zh",
            "Afrikaans",
            "Albanian",
            "Amharic",
            "Arabic",
            "Armenian",
            "Assamese",
            "Azerbaijani",
            "Bashkir",
            "Basque",
            "Belarusian",
            "Bengali",
            "Bosnian",
            "Breton",
            "Bulgarian",
            "Burmese",
            "Cantonese",
            "Castilian",
            "Catalan",
            "Chinese",
            "Croatian",
            "Czech",
            "Danish",
            "Dutch",
            "English",
            "Estonian",
            "Faroese",
            "Finnish",
            "Flemish",
            "French",
            "Galician",
            "Georgian",
            "German",
            "Greek",
            "Gujarati",
            "Haitian",
            "Haitian Creole",
            "Hausa",
            "Hawaiian",
            "Hebrew",
            "Hindi",
            "Hungarian",
            "Icelandic",
            "Indonesian",
            "Italian",
            "Japanese",
            "Javanese",
            "Kannada",
            "Kazakh",
            "Khmer",
            "Korean",
            "Lao",
            "Latin",
            "Latvian",
            "Letzeburgesch",
            "Lingala",
            "Lithuanian",
            "Luxembourgish",
            "Macedonian",
            "Malagasy",
            "Malay",
            "Malayalam",
            "Maltese",
            "Mandarin",
            "Maori",
            "Marathi",
            "Moldavian",
            "Moldovan",
            "Mongolian",
            "Myanmar",
            "Nepali",
            "Norwegian",
            "Nynorsk",
            "Occitan",
            "Panjabi",
            "Pashto",
            "Persian",
            "Polish",
            "Portuguese",
            "Punjabi",
            "Pushto",
            "Romanian",
            "Russian",
            "Sanskrit",
            "Serbian",
            "Shona",
            "Sindhi",
            "Sinhala",
            "Sinhalese",
            "Slovak",
            "Slovenian",
            "Somali",
            "Spanish",
            "Sundanese",
            "Swahili",
            "Swedish",
            "Tagalog",
            "Tajik",
            "Tamil",
            "Tatar",
            "Telugu",
            "Thai",
            "Tibetan",
            "Turkish",
            "Turkmen",
            "Ukrainian",
            "Urdu",
            "Uzbek",
            "Valencian",
            "Vietnamese",
            "Welsh",
            "Yiddish",
            "Yoruba"
          ],
          "type": "string"
        },
        "logprob_threshold": {
          "default": -1,
          "description": "if the average log probability is lower than this value, treat the decoding as failed",
          "type": "number"
        },
        "model": {
          "default": "large-v3",
          "description": "This version only supports Whisper-large-v3.",
          "type": "string"
        },
        "no_speech_threshold": {
          "default": 0.6,
          "description": "if the probability of the <|nospeech|> token is higher than this value AND the decoding has failed due to `logprob_threshold`, consider the segment as silence",
          "type": "number"
        },
        "patience": {
          "description": "optional patience value to use in beam decoding, as in https://arxiv.org/abs/2204.05424, the default (1.0) is equivalent to conventional beam search",
          "type": "number"
        },
        "suppress_tokens": {
          "default": "-1",
          "description": "comma-separated list of token ids to suppress during sampling; '-1' will suppress most special characters except common punctuations",
          "type": "string"
        },
        "temperature": {
          "default": 0,
          "description": "temperature to use for sampling",
          "type": "number"
        },
        "temperature_increment_on_fallback": {
          "default": 0.2,
          "description": "temperature to increase when falling back when the decoding fails to meet either of the thresholds below",
          "type": "number"
        },
        "transcription": {
          "default": "plain text",
          "description": "Choose the format for the transcription",
          "enum": [
            "plain text",
            "srt",
            "vtt"
          ],
          "type": "string"
        },
        "translate": {
          "default": false,
          "description": "Translate the text to English when set to True",
          "type": "boolean"
        }
      },
      "required": [
        "audio"
      ],
      "type": "object"
    },
    "stream": {
      "description": "Request a URL to receive streaming output using server-sent events (SSE).",
      "type": "boolean"
    },
    "version": {
      "description": "Eg: 4d50797290df275329f202e48c76360b3f22b08d28c196cbc54600319435f8d2. The ID of the model version",
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
|»» audio|body|string(uri)|true|Audio file|
|»» compression_ratio_threshold|body|number|false|if the gzip compression ratio is higher than this value, treat the decoding as failed|
|»» condition_on_previous_text|body|boolean|false|if True, provide the previous output of the model as a prompt for the next window; disabling may make the text inconsistent across windows, but the model becomes less prone to getting stuck in a failure loop|
|»» initial_prompt|body|string|false|optional text to provide as a prompt for the first window.|
|»» language|body|string|false|language spoken in the audio, specify None to perform language detection|
|»» logprob_threshold|body|number|false|if the average log probability is lower than this value, treat the decoding as failed|
|»» model|body|string|false|This version only supports Whisper-large-v3.|
|»» no_speech_threshold|body|number|false|if the probability of the <|nospeech|> token is higher than this value AND the decoding has failed due to `logprob_threshold`, consider the segment as silence|
|»» patience|body|number|false|optional patience value to use in beam decoding, as in https://arxiv.org/abs/2204.05424, the default (1.0) is equivalent to conventional beam search|
|»» suppress_tokens|body|string|false|comma-separated list of token ids to suppress during sampling; '-1' will suppress most special characters except common punctuations|
|»» temperature|body|number|false|temperature to use for sampling|
|»» temperature_increment_on_fallback|body|number|false|temperature to increase when falling back when the decoding fails to meet either of the thresholds below|
|»» transcription|body|string|false|Choose the format for the transcription|
|»» translate|body|boolean|false|Translate the text to English when set to True|
|» stream|body|boolean|false|Request a URL to receive streaming output using server-sent events (SSE).|
|» version|body|string|true|Eg: 4d50797290df275329f202e48c76360b3f22b08d28c196cbc54600319435f8d2. The ID of the model version|
|» webhook|body|string|false|An HTTPS URL for receiving a webhook when the prediction has new output. The webhook will be a POST request where the request body is the same as the response body of the get prediction operation. If there are network problems, we will retry the webhook a few times, so make sure it can be safely called more than once. Replicate will not follow redirects when sending webhook requests to your service, so be sure to specify a URL that will resolve without redirecting.|
|» webhook_events_filter|body|string|false|By default, we will send requests to your webhook URL whenever there are new outputs or the prediction has finished. You can change which events trigger webhook requests by specifying webhook_events_filter in the prediction request: start: immediately on prediction start, output: each time a prediction generates an output (note that predictions can generate multiple outputs), logs: each time log output is generated by a prediction, completed: when the prediction reaches a terminal state (succeeded/canceled/failed).|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»» language|af|
|»» language|am|
|»» language|ar|
|»» language|as|
|»» language|az|
|»» language|ba|
|»» language|be|
|»» language|bg|
|»» language|bn|
|»» language|bo|
|»» language|br|
|»» language|bs|
|»» language|ca|
|»» language|cs|
|»» language|cy|
|»» language|da|
|»» language|de|
|»» language|el|
|»» language|en|
|»» language|es|
|»» language|et|
|»» language|eu|
|»» language|fa|
|»» language|fi|
|»» language|fo|
|»» language|fr|
|»» language|gl|
|»» language|gu|
|»» language|ha|
|»» language|haw|
|»» language|he|
|»» language|hi|
|»» language|hr|
|»» language|ht|
|»» language|hu|
|»» language|hy|
|»» language|id|
|»» language|is|
|»» language|it|
|»» language|ja|
|»» language|jw|
|»» language|ka|
|»» language|kk|
|»» language|km|
|»» language|kn|
|»» language|ko|
|»» language|la|
|»» language|lb|
|»» language|ln|
|»» language|lo|
|»» language|lt|
|»» language|lv|
|»» language|mg|
|»» language|mi|
|»» language|mk|
|»» language|ml|
|»» language|mn|
|»» language|mr|
|»» language|ms|
|»» language|mt|
|»» language|my|
|»» language|ne|
|»» language|nl|
|»» language|nn|
|»» language|no|
|»» language|oc|
|»» language|pa|
|»» language|pl|
|»» language|ps|
|»» language|pt|
|»» language|ro|
|»» language|ru|
|»» language|sa|
|»» language|sd|
|»» language|si|
|»» language|sk|
|»» language|sl|
|»» language|sn|
|»» language|so|
|»» language|sq|
|»» language|sr|
|»» language|su|
|»» language|sv|
|»» language|sw|
|»» language|ta|
|»» language|te|
|»» language|tg|
|»» language|th|
|»» language|tk|
|»» language|tl|
|»» language|tr|
|»» language|tt|
|»» language|uk|
|»» language|ur|
|»» language|uz|
|»» language|vi|
|»» language|yi|
|»» language|yo|
|»» language|yue|
|»» language|zh|
|»» language|Afrikaans|
|»» language|Albanian|
|»» language|Amharic|
|»» language|Arabic|
|»» language|Armenian|
|»» language|Assamese|
|»» language|Azerbaijani|
|»» language|Bashkir|
|»» language|Basque|
|»» language|Belarusian|
|»» language|Bengali|
|»» language|Bosnian|
|»» language|Breton|
|»» language|Bulgarian|
|»» language|Burmese|
|»» language|Cantonese|
|»» language|Castilian|
|»» language|Catalan|
|»» language|Chinese|
|»» language|Croatian|
|»» language|Czech|
|»» language|Danish|
|»» language|Dutch|
|»» language|English|
|»» language|Estonian|
|»» language|Faroese|
|»» language|Finnish|
|»» language|Flemish|
|»» language|French|
|»» language|Galician|
|»» language|Georgian|
|»» language|German|
|»» language|Greek|
|»» language|Gujarati|
|»» language|Haitian|
|»» language|Haitian Creole|
|»» language|Hausa|
|»» language|Hawaiian|
|»» language|Hebrew|
|»» language|Hindi|
|»» language|Hungarian|
|»» language|Icelandic|
|»» language|Indonesian|
|»» language|Italian|
|»» language|Japanese|
|»» language|Javanese|
|»» language|Kannada|
|»» language|Kazakh|
|»» language|Khmer|
|»» language|Korean|
|»» language|Lao|
|»» language|Latin|
|»» language|Latvian|
|»» language|Letzeburgesch|
|»» language|Lingala|
|»» language|Lithuanian|
|»» language|Luxembourgish|
|»» language|Macedonian|
|»» language|Malagasy|
|»» language|Malay|
|»» language|Malayalam|
|»» language|Maltese|
|»» language|Mandarin|
|»» language|Maori|
|»» language|Marathi|
|»» language|Moldavian|
|»» language|Moldovan|
|»» language|Mongolian|
|»» language|Myanmar|
|»» language|Nepali|
|»» language|Norwegian|
|»» language|Nynorsk|
|»» language|Occitan|
|»» language|Panjabi|
|»» language|Pashto|
|»» language|Persian|
|»» language|Polish|
|»» language|Portuguese|
|»» language|Punjabi|
|»» language|Pushto|
|»» language|Romanian|
|»» language|Russian|
|»» language|Sanskrit|
|»» language|Serbian|
|»» language|Shona|
|»» language|Sindhi|
|»» language|Sinhala|
|»» language|Sinhalese|
|»» language|Slovak|
|»» language|Slovenian|
|»» language|Somali|
|»» language|Spanish|
|»» language|Sundanese|
|»» language|Swahili|
|»» language|Swedish|
|»» language|Tagalog|
|»» language|Tajik|
|»» language|Tamil|
|»» language|Tatar|
|»» language|Telugu|
|»» language|Thai|
|»» language|Tibetan|
|»» language|Turkish|
|»» language|Turkmen|
|»» language|Ukrainian|
|»» language|Urdu|
|»» language|Uzbek|
|»» language|Valencian|
|»» language|Vietnamese|
|»» language|Welsh|
|»» language|Yiddish|
|»» language|Yoruba|
|»» transcription|plain text|
|»» transcription|srt|
|»» transcription|vtt|

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

