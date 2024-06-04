<!-- Generator: Widdershins v4.0.1 -->

<h1 id="website-contacts-scraper">Website Contacts Scraper v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

Lightning Fast Scraping of Emails, Phone Numbers, and Social Links (Facebook, TikTok, Instagram, Twitter, LinkedIn and others) from a Website in Real-Time. Easy-to-use and Scalable API to scrape and extract email addresses, phone numbers and profile links on all major social platforms - Facebook, Instagram, TikTok, Twitter, LinkedIn, Youtube, Snapchat, Pinterest and GitHub from a website domain in real-time. Chat with us live on Discord: https://discord.gg/wxJxGsZgha.  

Base URLs:

* <a href="website-contacts-scraper.p.rapidapi.com">website-contacts-scraper.p.rapidapi.com</a>

<h1 id="website-contacts-scraper-default">Default</h1>

## get__scrape-contacts

> Code samples

```shell
# You can also use wget
curl -X GET website-contacts-scraper.p.rapidapi.com/scrape-contacts?query=type,string \
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

r = requests.get('website-contacts-scraper.p.rapidapi.com/scrape-contacts', params={
  'query': {
  "type": "string"
}
}, headers = headers)

print(r.json())

```

`GET /scrape-contacts`

*Scrape emails, phone numbers, and social profile links from a website root domain.. Note that by default, the emals returned by the endpoint are not restricted to match the website domain (after the "@"), to restrict emails to the website domain, set the match_emai...*

Scrape emails, phone numbers, and social profile links from a website root domain.. Note that by default, the emals returned by the endpoint are not restricted to match the website domain (after the "@"), to restrict emails to the website domain, set the match_emai...

<h3 id="get__scrape-contacts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|query|query|string|true|Domain from which to scrape emails and contacts (e.g. wsgr.com). Accepts any valid url and uses its root domain as a starting point for the extraction.. |
|match_email_domain|query|boolean|false|Only return emails in the same domain like the one supplied with the query parameter. Default: false.. |
|external_matching|query|boolean|false|Try to match any web source, in addition to website and social platforms. Default: false. |
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: website-contacts-scraper.p.rapidapi.com. |

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "items": {
        "properties": {
          "domain": {
            "type": "string"
          },
          "emails": {
            "items": {
              "properties": {
                "sources": {
                  "items": {
                    "type": "string"
                  },
                  "type": "array"
                },
                "value": {
                  "type": "string"
                }
              },
              "type": "object"
            },
            "type": "array"
          },
          "facebook": {
            "type": "string"
          },
          "github": {
            "type": "string"
          },
          "instagram": {
            "type": "string"
          },
          "linkedin": {
            "type": "string"
          },
          "phone_numbers": {
            "items": {
              "properties": {
                "sources": {
                  "items": {
                    "type": "string"
                  },
                  "type": "array"
                },
                "value": {
                  "type": "string"
                }
              },
              "type": "object"
            },
            "type": "array"
          },
          "pinterest": {
            "type": "string"
          },
          "query": {
            "type": "string"
          },
          "snapchat": {
            "type": "string"
          },
          "tiktok": {
            "type": "string"
          },
          "twitter": {
            "type": "string"
          },
          "youtube": {
            "type": "string"
          }
        },
        "type": "object"
      },
      "type": "array"
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

<h3 id="get__scrape-contacts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="get__scrape-contacts-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|[object]|false|none|none|
|»» domain|string|false|none|none|
|»» emails|[object]|false|none|none|
|»»» sources|[string]|false|none|none|
|»»» value|string|false|none|none|
|»» facebook|string|false|none|none|
|»» github|string|false|none|none|
|»» instagram|string|false|none|none|
|»» linkedin|string|false|none|none|
|»» phone_numbers|[object]|false|none|none|
|»»» sources|[string]|false|none|none|
|»»» value|string|false|none|none|
|»» pinterest|string|false|none|none|
|»» query|string|false|none|none|
|»» snapchat|string|false|none|none|
|»» tiktok|string|false|none|none|
|»» twitter|string|false|none|none|
|»» youtube|string|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## post__website-url-by-keyword

> Code samples

```shell
# You can also use wget
curl -X POST website-contacts-scraper.p.rapidapi.com/website-url-by-keyword \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'X-RapidAPI-Key: [object Object]' \
  -H 'X-RapidAPI-Host: [object Object]'

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
  'X-RapidAPI-Key': {
  "type": "string"
},
  'X-RapidAPI-Host': {
  "type": "string"
}
}

r = requests.post('website-contacts-scraper.p.rapidapi.com/website-url-by-keyword', headers = headers)

print(r.json())

```

`POST /website-url-by-keyword`

*Get company website URL by keyword / company name. Up to 20 keywords are supported in a single query.. *

Get company website URL by keyword / company name. Up to 20 keywords are supported in a single query.. 

> Body parameter

```json
{
  "properties": {
    "keywords": {
      "description": "A list of keywords. Each keyword will be used individually to search for a company website (the response will contain the same number of results).",
      "items": {
        "type": "string"
      },
      "type": "array"
    }
  },
  "type": "object"
}
```

<h3 id="post__website-url-by-keyword-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|X-RapidAPI-Key|header|string|true|Eg: ${RAPID-API-KEY}. |
|X-RapidAPI-Host|header|string|true|Eg: website-contacts-scraper.p.rapidapi.com. |
|body|body|object|false|none|
|» keywords|body|[string]|false|A list of keywords. Each keyword will be used individually to search for a company website (the response will contain the same number of results).|

> Example responses

> 200 Response

```json
{
  "properties": {
    "data": {
      "additionalProperties": true,
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

<h3 id="post__website-url-by-keyword-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|successful operation|Inline|

<h3 id="post__website-url-by-keyword-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» data|object|false|none|none|
|» request_id|string|false|none|none|
|» status|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

