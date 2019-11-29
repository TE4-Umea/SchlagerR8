# Schlager🐀

## Database design
![](https://i.imgur.com/vhU6jDn.png)

https://dbdiagram.io/d/5de0e564edf08a25543e837e


## Routes
### API
  * POST /api/vote/create
    - example payload
    ```JSON 
    [
        {
            "id": 1, // Song id in the database
            "score": 8 // score for that specific song.
        },
        {
            "id": 3,
            "score": 2 
        },
        {
            "id": 4,
            "score": 4 
        },
        {
            "id": 6,
            "score": 6 
        },
        {
            "id": 12,
            "score": 10 
        },
        {
            "id": 14,
            "score": 4 
        },
        {
            "id": 20,
            "score": 8
        },
        {
            "id": 17,
            "score": 14 
        }
    ]
  * GET /api/songs/read
    - example response, code 200:
    ```JSON 
    [
        {
            "id": 1,
            "title": "Placeholder",
            "information": "lorem ipsum",
            "country": "se"
        },
        {
            "id": 2,
            "title": "Placeholder",
            "information": "lorem ipsum",
            "country": "de"
        },
        {
            "id": 3,
            "title": "Placeholder",
            "information": "lorem ipsum",
            "country": "uk"
        },
        {
            "id": 4,
            "title": "Placeholder",
            "information": "lorem ipsum",            
            "country": "no"
        }
    ]
  * GET /api/votes/read
