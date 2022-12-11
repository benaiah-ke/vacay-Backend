# VACAY API
## Models
1. User
2. Experiences
3. Reservations
### User
attributes - name, phone number && email
### Destinations
attributes - destination, meals, activities, and price
### Reservations
attributes - experience_id, user_id, destination, number_of_adults, number_of_kids,
start_date, end_date
## Routes
### User
post /signup parameters
```

{
    "name":"John Doe",
    "phone_number":712345678,
    "password":"1234567xx",
    "password_confirmation":"1234567xx"
} 

```
get /users - get all users
```

[
    {
        "id": 1,
        "name": "John Doe",
        "phone_number": 712345678,
        "reservations": []
    }
]

```
post /login
```

{
    "name":"John Doe",
    "Password":"1234567xx"
}

```
get /users/:id
Response
```

{
    "id": 1,
    "name": "John Doe",
    "phone_number": 712345678,
    "reservations": []
}

```
patch /users/id allows you to update the following user parameters
```

{
    "name":"John Doe",
    "phone_number":712345678,
    "password":"1234567xx",
    "password_confirmation":"1234567xx"
}

```
### Destinations
get /destinations
```

[
    {
        “id": 1,
        "destination": "Kilimanjaro",
        "meals": "grilled meat",
        "activities": "hiking && swimming",
        "price": 35000
    }
]

```
post /destinations parameters and response
```

{
    "destination":"Kilimanjaro",
    "meals":"grilled meat",
    "activities":"hiking && swimming",
    "price":35000
}

```
### Reservations
post /reservations
```

{
    "adults":1,
    "kids":0,
    "start_date":"2022-12-17",
    "end_date":"2022-12-31",
    "user_id":1,
    "destination_id":1
}

```
get /reservations
```

[
    {
    "id": 1,
    "adults": 1,
    "kids": 0,
    "start_date": "2022-12-17T00:00:00.000Z",
    "end_date": "2022-12-31T00:00:00.000Z",
    "destination": {
        "id": 1,
        "destination": "Kilimanjaro",
        "meals": "grilled meat",
        "activities": "hiking && swimming",
        "price": 35000
    },
    "user": {
        "id": 1,
        "name": "John Doe",
        "phone_number": 712345678
        }
    }
]

```
