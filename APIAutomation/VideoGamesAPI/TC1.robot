*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${base_url}  http://localhost:8080


*** Test Cases ***
TC1:Returns all the videos games(GET)
   create session  mysession  ${base_url}
   ${response}=  GET On Session  mysession  /app/videogames
   Log To Console  ${response.status_code}
   Log To Console  ${response.content}

   # Validate Response
   ${status_code}=  Convert To String  ${response.status_code}
   Should Be Equal As Strings  ${status_code}  200

TC2:Add a new video game(POST)
   create session  mysession  ${base_url}
   ${data}=  Create Dictionary  name=Test Game  releaseDate=2023-10-01  rating=5.0  reviewScore=10  category=Action  platform=PC
   ${response}=  POST On Session  mysession  /app/videogames  json=${data}
   Log To Console  ${response.status_code}
   Log To Console  ${response.content}

   # Validate Response
   ${status_code}=  Convert To String  ${response.status_code}
   Should Be Equal As Strings  ${status_code}  200   

TC3: Returns the details of a video game by ID (GET)
   create session  mysession  ${base_url}
   ${response}=  GET On Session  mysession  /app/videogames/1
   Log To Console  ${response.status_code}
   Log To Console  ${response.content}

   # Validate Response
   ${status_code}=  Convert To String  ${response.status_code}
   Should Be Equal As Strings  ${status_code}  200
   ${content}=  Convert To String  ${response.content}

TC4: Update a video game by ID (PUT)
   create session  mysession  ${base_url}
   ${data}=  Create Dictionary  name=Updated Game  releaseDate=2023-10-01  rating=4.5  reviewScore=8  category=Adventure  platform=Xbox
   ${response}=  PUT On Session  mysession  /app/videogames/1  json=${data}
   Log To Console  ${response.status_code}
   Log To Console  ${response.content}

   # Validate Response
   ${status_code}=  Convert To String  ${response.status_code}
   Should Be Equal As Strings  ${status_code}  200  

   ${res_body}=  Convert To String  ${response.content}
   Should Contain  ${res_body}  Updated Game

TC5: Delete a video game by ID (DELETE)
   create session  mysession  ${base_url}
   ${response}=  DELETE On Session  mysession  /app/videogames/1
   Log To Console  ${response.status_code}
   Log To Console  ${response.content}

   # Validate Response
   ${status_code}=  Convert To String  ${response.status_code}
   Should Be Equal As Strings  ${status_code}  200

   ${res_body}=  Convert To String  ${response.content}
   Should Contain  ${res_body}  Game deleted successfully   