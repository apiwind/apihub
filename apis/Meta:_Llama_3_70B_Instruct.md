<!-- Generator: Widdershins v4.0.1 -->

<h1 id="meta-llama-3-70b-instruct">Meta: Llama 3 70B Instruct v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Meta's latest class of model (Llama 3) launched with a variety of sizes & flavors. This 70B instruct-tuned version was optimized for high quality dialogue usecases.
It has demonstrated strong performance compared to leading closed-source models in human evaluations.
To read more about the model release, [click here](https://ai.meta.com/blog/meta-llama-3/). Usage of this model is subject to [Meta's Acceptable Use Policy](https://llama.meta.com/llama3/use-policy/).

Base URLs:

* <a href="https://openrouter.ai">https://openrouter.ai</a>

<h1 id="meta-llama-3-70b-instruct-default">Default</h1>

## post__api_v1_chat_completions

> Code samples

```shell
# You can also use wget
curl -X POST https://openrouter.ai/api/v1/chat/completions \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: [object Object]' \
  -H 'Content-Type: [object Object]' \
  -H 'HTTP-Referer: [object Object]' \
  -H 'X-Title: [object Object]'

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
},
  'HTTP-Referer': {
  "type": "string"
},
  'X-Title': {
  "type": "string"
}
}

r = requests.post('https://openrouter.ai/api/v1/chat/completions', headers = headers)

print(r.json())

```

`POST /api/v1/chat/completions`

*Call API using model Meta: Llama 3 70B Instruct*

Call API using model Meta: Llama 3 70B Instruct

> Body parameter

```json
{
  "properties": {
    "frequency_penalty": {
      "default": "0.0",
      "description": "This setting aims to control the repetition of tokens based on how often they appear in the input. It tries to use less frequently those tokens that appear more in the input, proportional to how frequently they occur. Token penalty scales with the number of occurrences. Negative values will encourage token reuse.Range: -2.0 to 2.0.",
      "type": "number"
    },
    "messages": {
      "description": "Input messages",
      "items": {
        "properties": {
          "content": {
            "oneOf": [
              {
                "type": "string"
              },
              {
                "items": {
                  "oneOf": [
                    {
                      "properties": {
                        "text": {
                          "type": "string"
                        },
                        "type": {
                          "enum": [
                            "text"
                          ],
                          "type": "string"
                        }
                      },
                      "required": [
                        "type",
                        "text"
                      ],
                      "type": "object"
                    },
                    {
                      "properties": {
                        "image_url": {
                          "properties": {
                            "detail": {
                              "default": "auto",
                              "type": "string"
                            },
                            "url": {
                              "type": "string"
                            }
                          },
                          "required": [
                            "url"
                          ],
                          "type": "object"
                        },
                        "type": {
                          "enum": [
                            "image_url"
                          ],
                          "type": "string"
                        }
                      },
                      "required": [
                        "type",
                        "image_url"
                      ],
                      "type": "object"
                    }
                  ]
                },
                "type": "array"
              }
            ]
          },
          "name": {
            "type": "string"
          },
          "role": {
            "enum": [
              "user",
              "assistant",
              "system",
              "tool"
            ],
            "type": "string"
          }
        },
        "required": [
          "role",
          "content"
        ],
        "type": "object"
      },
      "type": "array"
    },
    "min_p": {
      "default": "0.0",
      "description": "Represents the minimum probability for a token to be considered, relative to the probability of the most likely token. (The value changes depending on the confidence level of the most probable token.) If your Min-P is set to 0.1, that means it will only allow for tokens that are at least 1/10th as probable as the best possible option.Range: 0.0 to 1.0.",
      "type": "number"
    },
    "model": {
      "description": "Eg: \"meta-llama/llama-3-70b-instruct\". The model name to use",
      "type": "string"
    },
    "presence_penalty": {
      "default": "0.0",
      "description": "Adjusts how often the model repeats specific tokens already used in the input. Higher values make such repetition less likely, while negative values do the opposite. Token penalty does not scale with the number of occurrences. Negative values will encourage token reuse.Range: -2.0 to 2.0.",
      "type": "number"
    },
    "repetition_penalty": {
      "default": "1.0",
      "description": "Helps to reduce the repetition of tokens from the input. A higher value makes the model less likely to repeat tokens, but too high a value can make the output less coherent (often with run-on sentences that lack small words). Token penalty scales based on original token's probability.Range: 0.0 to 2.0.",
      "type": "number"
    },
    "temperature": {
      "default": "1.0",
      "description": "This setting influences the variety in the model's responses. Lower values lead to more predictable and typical responses, while higher values encourage more diverse and less common responses. At 0, the model always gives the same response for a given input.Range: 0.0 to 2.0.",
      "type": "number"
    },
    "top_a": {
      "default": "0.0",
      "description": "Consider only the top tokens with \"sufficiently high\" probabilities based on the probability of the most likely token. Think of it like a dynamic Top-P. A lower Top-A value focuses the choices based on the highest probability token but with a narrower scope. A higher Top-A value does not necessarily affect the creativity of the output, but rather refines the filtering process based on the maximum probability.Range: 0.0 to 1.0.",
      "type": "number"
    },
    "top_k": {
      "default": "0",
      "description": "This limits the model's choice of tokens at each step, making it choose from a smaller set. A value of 1 means the model will always pick the most likely next token, leading to predictable results. By default this setting is disabled, making the model to consider all choices.Range: 0 or above.",
      "type": "integer"
    },
    "top_p": {
      "default": "1.0",
      "description": "This setting limits the model's choices to a percentage of likely tokens: only the top tokens whose probabilities add up to P. A lower value makes the model's responses more predictable, while the default setting allows for a full range of token choices. Think of it like a dynamic Top-K.Range: 0.0 to 1.0.",
      "type": "number"
    }
  },
  "required": [
    "model"
  ],
  "type": "object"
}
```

<h3 id="post__api_v1_chat_completions-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|Authorization|header|string|true|Eg: Bearer ${OPENROUTER_API_KEY}. |
|Content-Type|header|string|true|Eg: application/json. |
|HTTP-Referer|header|string|false|Eg: ${YOUR_SITE_URL}. For including your app on openrouter.ai rankings.|
|X-Title|header|string|false|Eg: ${YOUR_SITE_NAME}. Shows in rankings on openrouter.ai.|
|body|body|object|false|none|
|» frequency_penalty|body|number|false|This setting aims to control the repetition of tokens based on how often they appear in the input. It tries to use less frequently those tokens that appear more in the input, proportional to how frequently they occur. Token penalty scales with the number of occurrences. Negative values will encourage token reuse.Range: -2.0 to 2.0.|
|» messages|body|[[Message](#schemamessage)]|false|Input messages|
|»» content|body|any|true|none|
|»»» *anonymous*|body|string|false|none|
|»»» *anonymous*|body|[oneOf]|false|none|
|»»»» *anonymous*|body|[TextContent](#schematextcontent)|false|none|
|»»»»» text|body|string|true|none|
|»»»»» type|body|string|true|none|
|»»»» *anonymous*|body|[ImageContentPart](#schemaimagecontentpart)|false|none|
|»»»»» image_url|body|object|true|none|
|»»»»»» detail|body|string|false|none|
|»»»»»» url|body|string|true|none|
|»»»»» type|body|string|true|none|
|»» name|body|string|false|none|
|»» role|body|string|true|none|
|» min_p|body|number|false|Represents the minimum probability for a token to be considered, relative to the probability of the most likely token. (The value changes depending on the confidence level of the most probable token.) If your Min-P is set to 0.1, that means it will only allow for tokens that are at least 1/10th as probable as the best possible option.Range: 0.0 to 1.0.|
|» model|body|string|true|Eg: "meta-llama/llama-3-70b-instruct". The model name to use|
|» presence_penalty|body|number|false|Adjusts how often the model repeats specific tokens already used in the input. Higher values make such repetition less likely, while negative values do the opposite. Token penalty does not scale with the number of occurrences. Negative values will encourage token reuse.Range: -2.0 to 2.0.|
|» repetition_penalty|body|number|false|Helps to reduce the repetition of tokens from the input. A higher value makes the model less likely to repeat tokens, but too high a value can make the output less coherent (often with run-on sentences that lack small words). Token penalty scales based on original token's probability.Range: 0.0 to 2.0.|
|» temperature|body|number|false|This setting influences the variety in the model's responses. Lower values lead to more predictable and typical responses, while higher values encourage more diverse and less common responses. At 0, the model always gives the same response for a given input.Range: 0.0 to 2.0.|
|» top_a|body|number|false|Consider only the top tokens with "sufficiently high" probabilities based on the probability of the most likely token. Think of it like a dynamic Top-P. A lower Top-A value focuses the choices based on the highest probability token but with a narrower scope. A higher Top-A value does not necessarily affect the creativity of the output, but rather refines the filtering process based on the maximum probability.Range: 0.0 to 1.0.|
|» top_k|body|integer|false|This limits the model's choice of tokens at each step, making it choose from a smaller set. A value of 1 means the model will always pick the most likely next token, leading to predictable results. By default this setting is disabled, making the model to consider all choices.Range: 0 or above.|
|» top_p|body|number|false|This setting limits the model's choices to a percentage of likely tokens: only the top tokens whose probabilities add up to P. A lower value makes the model's responses more predictable, while the default setting allows for a full range of token choices. Think of it like a dynamic Top-K.Range: 0.0 to 1.0.|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»»»»» type|text|
|»»»»» type|image_url|
|»» role|user|
|»» role|assistant|
|»» role|system|
|»» role|tool|

> Example responses

> 200 Response

```json
{
  "properties": {
    "choices": {
      "items": {
        "properties": {
          "finish_reason": {
            "description": "The reason why the completion finished (e.g., 'stop', 'length').",
            "type": "string"
          },
          "index": {
            "description": "The index of the choice.",
            "type": "integer"
          },
          "message": {
            "properties": {
              "content": {
                "description": "The content of the message.",
                "type": "string"
              },
              "role": {
                "description": "The role of the author of this message (typically 'system', 'user', or 'assistant').",
                "type": "string"
              }
            },
            "required": [
              "role",
              "content"
            ],
            "type": "object"
          }
        },
        "required": [
          "index",
          "message",
          "finish_reason"
        ],
        "type": "object"
      },
      "type": "array"
    },
    "created": {
      "description": "The creation timestamp of the completion. Unix timestamp.",
      "type": "integer"
    },
    "id": {
      "description": "The unique identifier for the completion.",
      "type": "string"
    },
    "model": {
      "description": "The model used for the completion.",
      "type": "string"
    },
    "object": {
      "description": "The type of object returned.",
      "type": "string"
    },
    "system_fingerprint": {
      "description": "Only present if the provider supports it.",
      "type": "string"
    },
    "usage": {
      "properties": {
        "completion_tokens": {
          "description": "The number of tokens in the completion.",
          "type": "integer"
        },
        "prompt_tokens": {
          "description": "The number of tokens in the prompt.",
          "type": "integer"
        },
        "total_tokens": {
          "description": "The total number of tokens used.",
          "type": "integer"
        }
      },
      "required": [
        "prompt_tokens",
        "completion_tokens",
        "total_tokens"
      ],
      "type": "object"
    }
  },
  "required": [
    "id",
    "object",
    "created",
    "model",
    "choices",
    "usage"
  ],
  "type": "object"
}
```

<h3 id="post__api_v1_chat_completions-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__api_v1_chat_completions-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» choices|[object]|true|none|none|
|»» finish_reason|string|true|none|The reason why the completion finished (e.g., 'stop', 'length').|
|»» index|integer|true|none|The index of the choice.|
|»» message|object|true|none|none|
|»»» content|string|true|none|The content of the message.|
|»»» role|string|true|none|The role of the author of this message (typically 'system', 'user', or 'assistant').|
|» created|integer|true|none|The creation timestamp of the completion. Unix timestamp.|
|» id|string|true|none|The unique identifier for the completion.|
|» model|string|true|none|The model used for the completion.|
|» object|string|true|none|The type of object returned.|
|» system_fingerprint|string|false|none|Only present if the provider supports it.|
|» usage|object|true|none|none|
|»» completion_tokens|integer|true|none|The number of tokens in the completion.|
|»» prompt_tokens|integer|true|none|The number of tokens in the prompt.|
|»» total_tokens|integer|true|none|The total number of tokens used.|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_ContentPart">ContentPart</h2>
<!-- backwards compatibility -->
<a id="schemacontentpart"></a>
<a id="schema_ContentPart"></a>
<a id="tocScontentpart"></a>
<a id="tocscontentpart"></a>

```json
{
  "oneOf": [
    {
      "properties": {
        "text": {
          "type": "string"
        },
        "type": {
          "enum": [
            "text"
          ],
          "type": "string"
        }
      },
      "required": [
        "type",
        "text"
      ],
      "type": "object"
    },
    {
      "properties": {
        "image_url": {
          "properties": {
            "detail": {
              "default": "auto",
              "type": "string"
            },
            "url": {
              "type": "string"
            }
          },
          "required": [
            "url"
          ],
          "type": "object"
        },
        "type": {
          "enum": [
            "image_url"
          ],
          "type": "string"
        }
      },
      "required": [
        "type",
        "image_url"
      ],
      "type": "object"
    }
  ]
}

```

### Properties

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[TextContent](#schematextcontent)|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[ImageContentPart](#schemaimagecontentpart)|false|none|none|

<h2 id="tocS_ImageContentPart">ImageContentPart</h2>
<!-- backwards compatibility -->
<a id="schemaimagecontentpart"></a>
<a id="schema_ImageContentPart"></a>
<a id="tocSimagecontentpart"></a>
<a id="tocsimagecontentpart"></a>

```json
{
  "properties": {
    "image_url": {
      "properties": {
        "detail": {
          "default": "auto",
          "type": "string"
        },
        "url": {
          "type": "string"
        }
      },
      "required": [
        "url"
      ],
      "type": "object"
    },
    "type": {
      "enum": [
        "image_url"
      ],
      "type": "string"
    }
  },
  "required": [
    "type",
    "image_url"
  ],
  "type": "object"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|image_url|object|true|none|none|
|» detail|string|false|none|none|
|» url|string|true|none|none|
|type|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|image_url|

<h2 id="tocS_Message">Message</h2>
<!-- backwards compatibility -->
<a id="schemamessage"></a>
<a id="schema_Message"></a>
<a id="tocSmessage"></a>
<a id="tocsmessage"></a>

```json
{
  "properties": {
    "content": {
      "oneOf": [
        {
          "type": "string"
        },
        {
          "items": {
            "oneOf": [
              {
                "properties": {
                  "text": {
                    "type": "string"
                  },
                  "type": {
                    "enum": [
                      "text"
                    ],
                    "type": "string"
                  }
                },
                "required": [
                  "type",
                  "text"
                ],
                "type": "object"
              },
              {
                "properties": {
                  "image_url": {
                    "properties": {
                      "detail": {
                        "default": "auto",
                        "type": "string"
                      },
                      "url": {
                        "type": "string"
                      }
                    },
                    "required": [
                      "url"
                    ],
                    "type": "object"
                  },
                  "type": {
                    "enum": [
                      "image_url"
                    ],
                    "type": "string"
                  }
                },
                "required": [
                  "type",
                  "image_url"
                ],
                "type": "object"
              }
            ]
          },
          "type": "array"
        }
      ]
    },
    "name": {
      "type": "string"
    },
    "role": {
      "enum": [
        "user",
        "assistant",
        "system",
        "tool"
      ],
      "type": "string"
    }
  },
  "required": [
    "role",
    "content"
  ],
  "type": "object"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|content|any|true|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[[ContentPart](#schemacontentpart)]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|
|role|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|role|user|
|role|assistant|
|role|system|
|role|tool|

<h2 id="tocS_TextContent">TextContent</h2>
<!-- backwards compatibility -->
<a id="schematextcontent"></a>
<a id="schema_TextContent"></a>
<a id="tocStextcontent"></a>
<a id="tocstextcontent"></a>

```json
{
  "properties": {
    "text": {
      "type": "string"
    },
    "type": {
      "enum": [
        "text"
      ],
      "type": "string"
    }
  },
  "required": [
    "type",
    "text"
  ],
  "type": "object"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|text|string|true|none|none|
|type|string|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|type|text|

