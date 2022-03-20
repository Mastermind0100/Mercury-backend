[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://forthebadge.com)<br>
[![Linkedin](https://img.shields.io/badge/Linkedin-Atharva%20Hudlikar-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/atharva-hudlikar/)
# Mercury API
This is the api hosted using Heroku online. The api is made using Ruby on Rails.

## Sample Create Request and Response
Request:
```
url: hosted_domain + '/api/v1/items'
request_body:   {
	                "title": "The Garden of Words",
                    "url": "https://youtu.be/uR_3mwYl6Q4",
                    "value_type": "movie",
                    "watched": 0
                }
```
Response:
```
{
    "status": "SUCCESS",
    "message": "Item Saved",
    "data": {
        "id": 52,
        "title": "The Garden of Words",
        "url": "https://youtu.be/uR_3mwYl6Q4",
        "value_type": "movie",
        "created_at": "2022-03-20T11:03:47.242Z",
        "updated_at": "2022-03-20T11:03:47.242Z",
        "watched": 0
    }
}
```
## Sample Get (All) Request and Response
Request:
```
url: hosted_domain + '/api/v1/items'
```
Response:
```
{
    "status": "SUCCESS",
    "message": "Loaded items",
    "data": [
        {
            "id": 52,
            "title": "The Garden of Words",
            "url": "https://youtu.be/uR_3mwYl6Q4",
            "value_type": "movie",
            "created_at": "2022-03-20T11:03:47.242Z",
            "updated_at": "2022-03-20T11:03:47.242Z",
            "watched": 0
        }
    ]
}
```

## Sample Update Request and Response
Request:
```
url: hosted_domain + '/api/v1/items/{id}'
request_body:   {
                    "watched": 1
                }
```
Response:
```
{
    "status": "SUCCESS",
    "message": "Item updated",
    "data": {
        "watched": 1,
        "id": 52,
        "title": "The Garden of Words",
        "url": "https://youtu.be/uR_3mwYl6Q4",
        "value_type": "movie",
        "created_at": "2022-03-20T11:03:47.242Z",
        "updated_at": "2022-03-20T11:08:22.762Z"
    }
}
```

## Sample Delete Request and Response
Request:
```
url: hosted_domain + '/api/v1/items/{id}'
```
Response:
```
{
    "status": "SUCCESS",
    "message": "Deleted item",
    "data": {
        "id": 52,
        "title": "The Garden of Words",
        "url": "https://youtu.be/uR_3mwYl6Q4",
        "value_type": "movie",
        "created_at": "2022-03-20T11:03:47.242Z",
        "updated_at": "2022-03-20T11:08:22.762Z",
        "watched": 1
    }
}
```
## License
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat)](http://badges.mit-license.org)<br>
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
