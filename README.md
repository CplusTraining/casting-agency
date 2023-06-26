# Casting agency doc
## Login
<a href="https://fsnd-stu.us.auth0.com/authorize?audience=casting-agency&response_type=token&client_id=2NqLLf0o0DJrhgYUOhbSWHttGWPaM7gI&redirect_uri=https://casting-agency-api.onrender.com/">Login</a>

The access token will be displayed on the URL bar after login.

## Run and Test local
1. Run venv

    ```
    python3.9 -m venv venv
    ```

2. Setup environment

    ```
    source venv/bin/activate
    source setup.sh
    ```

3. Install dependencies
    
    ```
    pip3 install -r requirements.txt
    ```

4. Create a new database and import new data for testing
    
    ```
    dropdb casting-agency # (optional) Drop if it exists 
    createdb casting-agency
    psql -U postgres -d casting-agency < database.sql
    ```

5. Run the app

    ```
    flask run -p 3000
    ```


6. Login in local

    <a href="https://fsnd-stu.us.auth0.com/authorize?audience=casting-agency&response_type=token&client_id=2NqLLf0o0DJrhgYUOhbSWHttGWPaM7gI&redirect_uri=http://localhost:3000/">Login locally</a>
    The access token will be displayed on the URL bar after login.

7. Run test

    In Postman, import file **casting-agency.postman_collection.json** to run the test.

    If the tokens expire, please login locally again to get the token for respectively roles.

## Use API
### Resource endpoint library
`GET /movies`

`POST /movies/search`

`GET /movies/<int:movie_id>`

`PATCH /movies/<int:movie_id>/edit`

`POST /movies/create`

`DELETE /movies/<movie_id>`

`GET /actors`

`POST /actors/search`

`GET /actors/<int:actor_id>`

`PATCH /actors/<int:actor_id>/edit`

`POST /actors/create`

`DELETE /actors/<actor_id>`

`GET /castings`

`POST /castings/create`

`DELETE /castings/<casting_id>`

### Error handling
All error return a json object with these keys: success, error and message

#### Error 400
  ``` json
    {
      "success": False,
      "error": 400,
      "message": "Bad Request"
    }
  ```

#### Error 404
  ``` json
    {
      "success": False,
      "error": 404,
      "message": "Not Found"
    }
  ```

#### Error 405
  ``` json
    {
      "success": False,
      "error": 405,
      "message": "Method Not Allowed"
    }
  ```

#### Error 422
  ``` json
    {
      "success": False,
      "error": 422,
      "message": "Unprocessable"
    }
  ```

#### Error 500
  ``` json
    {
      "success": False,
      "error": 500,
      "message": "Internal Server Error"
    }
  ```