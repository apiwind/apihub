<!-- Generator: Widdershins v4.0.1 -->

<h1 id="real-time-lens-data">Real-Time Lens Data v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Search by Image on Google Lens in Real-Time, Get Visual Matches, Knowledge Graph, Products, Text, OCR, QR Code Information + More, All In a Single API. The Real-Time Lens Data API is a highly-maintained, fast and comprehensive tool that integrates visual image search capabilities with a suite of powerful features like OCR and sentence and word level text recognition. Additionally, it taps into Google’s knowledge graph, granting applications instant access to contextually relevant information and insights based on the visual input provided. Supports finding image sources (aka reverse image search) and more. Common use cases: Image recognition: extract information from images, such as objects, landmarks, and text. Object recognition: recognize and classify objects within an image, such as identifying a product or a piece of artwork. Visual search: search for visually similar images, such as finding more images of a particular product or landmark. Text extraction: extract and analyze text from images, such as reading and translating text from foreign language signs and menus. Product recognition: recognize and retrieve information about products, such as prices, specifications, and availability. Reading QR Code information. Chat with us live on Discord: https://discord.gg/wxJxGsZgha  

Base URLs:

* <a href="real-time-lens-data.p.rapidapi.com">real-time-lens-data.p.rapidapi.com</a>

<h1 id="real-time-lens-data-default">Default</h1>

## get__find-image-sources

> Code samples

```shell
# You can also use wget
curl -X GET real-time-lens-data.p.rapidapi.com/find-image-sources?url=type,string \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('real-time-lens-data.p.rapidapi.com/find-image-sources', params={
  'url': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /find-image-sources`

*Send an image URL and get the top 400 source web pages (Reverse Image Search). Note: Requests for this endpoint will be charged 2x (as two requests).. *

Send an image URL and get the top 400 source web pages (Reverse Image Search). Note: Requests for this endpoint will be charged 2x (as two requests).. 

<h3 id="get__find-image-sources-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|url|query|string|true|URL of the image for which to find sources. https://apkmazon.com/wp-content/uploads/2023/03/ask-ai-chatgpt-powered-chat-1.jpg. |
|limit|query|number|false|Maximum number of results to return (1-500). Default: 500. |
|safe_search|query|string|false|How to show explicit content in your search results, like sexual activity and graphic violence. Allowed values: off, blur. Default: blur. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-lens-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "type": "object"
      },
      "type": "array"
    },
    "parameters": {
      "properties": {
        "country": {
          "type": "string"
        },
        "language": {
          "type": "string"
        },
        "url": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__find-image-sources-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__find-image-sources-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|» parameters|object|false|none|none|
|»» country|string|false|none|none|
|»» language|string|false|none|none|
|»» url|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__object-detection

> Code samples

```shell
# You can also use wget
curl -X GET real-time-lens-data.p.rapidapi.com/object-detection?url=type,string \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('real-time-lens-data.p.rapidapi.com/object-detection', params={
  'url': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /object-detection`

*Detect landmarks, places, plants, animals, products, and other objects in an image, including bounding boxes, labels / types and confidence score.. *

Detect landmarks, places, plants, animals, products, and other objects in an image, including bounding boxes, labels / types and confidence score.. 

<h3 id="get__object-detection-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|url|query|string|true|URL of an image to perform Google Lens object detection, eg, https://thumbs.dreamstime.com/b/giraffe-zebra-1533191.jpg. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-lens-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "properties": {
        "detected_object_count": {
          "type": "integer"
        },
        "detected_objects": {
          "items": {
            "properties": {
              "box": {
                "properties": {
                  "height": {
                    "type": "number"
                  },
                  "left": {
                    "type": "number"
                  },
                  "top": {
                    "type": "number"
                  },
                  "width": {
                    "type": "number"
                  }
                },
                "type": "object"
              },
              "detections": {
                "items": {
                  "properties": {
                    "confidence": {
                      "type": "number"
                    },
                    "label": {
                      "type": "string"
                    },
                    "type": {
                      "type": "string"
                    }
                  },
                  "type": "object"
                },
                "type": "array"
              }
            },
            "type": "object"
          },
          "type": "array"
        },
        "main_detected_object": {
          "properties": {
            "box": {
              "properties": {
                "height": {
                  "type": "number"
                },
                "left": {
                  "type": "number"
                },
                "top": {
                  "type": "number"
                },
                "width": {
                  "type": "number"
                }
              },
              "type": "object"
            },
            "detections": {
              "items": {
                "properties": {
                  "confidence": {
                    "type": "number"
                  },
                  "label": {
                    "type": "string"
                  },
                  "type": {
                    "type": "string"
                  }
                },
                "type": "object"
              },
              "type": "array"
            }
          },
          "type": "object"
        }
      },
      "type": "object"
    },
    "parameters": {
      "properties": {
        "country": {
          "type": "string"
        },
        "language": {
          "type": "string"
        },
        "url": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__object-detection-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__object-detection-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|object|false|none|none|
|»» detected_object_count|integer|false|none|none|
|»» detected_objects|[object]|false|none|none|
|»»» box|object|false|none|none|
|»»»» height|number|false|none|none|
|»»»» left|number|false|none|none|
|»»»» top|number|false|none|none|
|»»»» width|number|false|none|none|
|»»» detections|[object]|false|none|none|
|»»»» confidence|number|false|none|none|
|»»»» label|string|false|none|none|
|»»»» type|string|false|none|none|
|»» main_detected_object|object|false|none|none|
|»»» box|object|false|none|none|
|»»»» height|number|false|none|none|
|»»»» left|number|false|none|none|
|»»»» top|number|false|none|none|
|»»»» width|number|false|none|none|
|»»» detections|[object]|false|none|none|
|»»»» confidence|number|false|none|none|
|»»»» label|string|false|none|none|
|»»»» type|string|false|none|none|
|» parameters|object|false|none|none|
|»» country|string|false|none|none|
|»» language|string|false|none|none|
|»» url|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__ocr

> Code samples

```shell
# You can also use wget
curl -X GET real-time-lens-data.p.rapidapi.com/ocr?url=type,string \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('real-time-lens-data.p.rapidapi.com/ocr', params={
  'url': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /ocr`

*Extract text from an image and get paragraph, sentence and word level text detections from Google Lens.. *

Extract text from an image and get paragraph, sentence and word level text detections from Google Lens.. 

<h3 id="get__ocr-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|url|query|string|true|URL of an image from which to extract text, eg https://s3-us-west-2.amazonaws.com/courses-images/wp-content/uploads/sites/1844/2017/06/15213029/images-textwrap-topbottom.png. |
|language|query|string|false|Set the language of the results. Allowed values: 2-letter language code, see ISO 639-1. Default: en. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-lens-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "properties": {
        "language": {
          "type": "string"
        },
        "paragraphs": {
          "items": {
            "properties": {
              "box": {
                "properties": {
                  "height": {
                    "type": "number"
                  },
                  "left": {
                    "type": "number"
                  },
                  "top": {
                    "type": "number"
                  },
                  "width": {
                    "type": "number"
                  }
                },
                "type": "object"
              },
              "sentences": {
                "items": {
                  "properties": {
                    "box": {
                      "properties": {
                        "height": {
                          "type": "number"
                        },
                        "left": {
                          "type": "number"
                        },
                        "top": {
                          "type": "number"
                        },
                        "width": {
                          "type": "number"
                        }
                      },
                      "type": "object"
                    },
                    "words": {
                      "items": {
                        "properties": {
                          "box": {
                            "properties": {
                              "height": {
                                "type": "number"
                              },
                              "left": {
                                "type": "number"
                              },
                              "top": {
                                "type": "number"
                              },
                              "width": {
                                "type": "number"
                              }
                            },
                            "type": "object"
                          },
                          "word": {
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "type": "array"
                    }
                  },
                  "type": "object"
                },
                "type": "array"
              }
            },
            "type": "object"
          },
          "type": "array"
        },
        "text": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "parameters": {
      "properties": {
        "language": {
          "type": "string"
        },
        "url": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__ocr-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__ocr-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|object|false|none|none|
|»» language|string|false|none|none|
|»» paragraphs|[object]|false|none|none|
|»»» box|object|false|none|none|
|»»»» height|number|false|none|none|
|»»»» left|number|false|none|none|
|»»»» top|number|false|none|none|
|»»»» width|number|false|none|none|
|»»» sentences|[object]|false|none|none|
|»»»» box|object|false|none|none|
|»»»»» height|number|false|none|none|
|»»»»» left|number|false|none|none|
|»»»»» top|number|false|none|none|
|»»»»» width|number|false|none|none|
|»»»» words|[object]|false|none|none|
|»»»»» box|object|false|none|none|
|»»»»»» height|number|false|none|none|
|»»»»»» left|number|false|none|none|
|»»»»»» top|number|false|none|none|
|»»»»»» width|number|false|none|none|
|»»»»» word|string|false|none|none|
|»» text|string|false|none|none|
|» parameters|object|false|none|none|
|»» language|string|false|none|none|
|»» url|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## get__search

> Code samples

```shell
# You can also use wget
curl -X GET real-time-lens-data.p.rapidapi.com/search?url=type,string \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.get('real-time-lens-data.p.rapidapi.com/search', params={
  'url': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /search`

*Search image by url and get visual matches, knowledge graph, products and prices, text and object detections. See it in on Google Lens.. *

Search image by url and get visual matches, knowledge graph, products and prices, text and object detections. See it in on Google Lens.. 

<h3 id="get__search-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|url|query|string|true|URL of an image to perform Google Lens search, eg, https://i.imgur.com/HBrB8p0.png. |
|language|query|string|false|Set the language of the results (Google's hl parameter). Allowed values: 2-letter language code, see ISO 639-1. Default: en. |
|country|query|string|false|Set the country for the search. Allowed values: 2-letter country code, see ISO 3166. Default: us. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: real-time-lens-data.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "properties": {
        "detected_objects": {
          "items": {
            "properties": {
              "bounding_box": {
                "properties": {
                  "height": {
                    "type": "number"
                  },
                  "left": {
                    "type": "number"
                  },
                  "top": {
                    "type": "number"
                  },
                  "width": {
                    "type": "number"
                  }
                },
                "type": "object"
              },
              "detections": {
                "items": {
                  "properties": {
                    "confidence": {
                      "type": "number"
                    },
                    "label": {
                      "type": "string"
                    },
                    "type": {
                      "type": "string"
                    }
                  },
                  "type": "object"
                },
                "type": "array"
              }
            },
            "type": "object"
          },
          "type": "array"
        },
        "knowledge_graph": {
          "items": {
            "properties": {
              "images": {
                "items": {
                  "properties": {
                    "height": {
                      "type": "integer"
                    },
                    "link": {
                      "type": "string"
                    },
                    "source": {
                      "type": "string"
                    },
                    "title": {
                      "type": "string"
                    },
                    "width": {
                      "type": "integer"
                    }
                  },
                  "type": "object"
                },
                "type": "array"
              },
              "link": {
                "type": "string"
              },
              "more_images_link": {
                "type": "string"
              },
              "subtitle": {
                "type": "string"
              },
              "thumbnail": {
                "type": "string"
              },
              "title": {
                "type": "string"
              }
            },
            "type": "object"
          },
          "type": "array"
        },
        "reverse_image_search_link": {
          "type": "string"
        },
        "searched_object": {
          "properties": {
            "bounding_box": {
              "properties": {
                "height": {
                  "type": "number"
                },
                "left": {
                  "type": "number"
                },
                "top": {
                  "type": "number"
                },
                "width": {
                  "type": "number"
                }
              },
              "type": "object"
            },
            "detections": {
              "items": {
                "properties": {
                  "confidence": {
                    "type": "number"
                  },
                  "label": {
                    "type": "string"
                  },
                  "type": {
                    "type": "string"
                  }
                },
                "type": "object"
              },
              "type": "array"
            }
          },
          "type": "object"
        },
        "visual_matches": {
          "items": {
            "type": "object"
          },
          "type": "array"
        }
      },
      "type": "object"
    },
    "parameters": {
      "properties": {
        "language": {
          "type": "string"
        },
        "url": {
          "type": "string"
        }
      },
      "type": "object"
    },
    "request_id": {
      "type": "string"
    },
    "status": {
      "type": "string"
    }
  },
  "type": "object"
}
```

<h3 id="get__search-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__search-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|object|false|none|none|
|»» detected_objects|[object]|false|none|none|
|»»» bounding_box|object|false|none|none|
|»»»» height|number|false|none|none|
|»»»» left|number|false|none|none|
|»»»» top|number|false|none|none|
|»»»» width|number|false|none|none|
|»»» detections|[object]|false|none|none|
|»»»» confidence|number|false|none|none|
|»»»» label|string|false|none|none|
|»»»» type|string|false|none|none|
|»» knowledge_graph|[object]|false|none|none|
|»»» images|[object]|false|none|none|
|»»»» height|integer|false|none|none|
|»»»» link|string|false|none|none|
|»»»» source|string|false|none|none|
|»»»» title|string|false|none|none|
|»»»» width|integer|false|none|none|
|»»» link|string|false|none|none|
|»»» more_images_link|string|false|none|none|
|»»» subtitle|string|false|none|none|
|»»» thumbnail|string|false|none|none|
|»»» title|string|false|none|none|
|»» reverse_image_search_link|string|false|none|none|
|»» searched_object|object|false|none|none|
|»»» bounding_box|object|false|none|none|
|»»»» height|number|false|none|none|
|»»»» left|number|false|none|none|
|»»»» top|number|false|none|none|
|»»»» width|number|false|none|none|
|»»» detections|[object]|false|none|none|
|»»»» confidence|number|false|none|none|
|»»»» label|string|false|none|none|
|»»»» type|string|false|none|none|
|»» visual_matches|[object]|false|none|none|
|» parameters|object|false|none|none|
|»» language|string|false|none|none|
|»» url|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

