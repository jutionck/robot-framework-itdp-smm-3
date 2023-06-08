*** Settings ***
Library        RequestsLibrary
Suite Setup    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get List Todo
    # Bisa juga buat Create Session di setiap Test Case
    # Create Session    jjjjj     ssss
    ${response}=    GET On Session    jsonplaceholder    /todos
    Log    ${response.json()}[0][id]
    # Assertion
    Should Be Equal As Strings    1  ${response.json()}[0][id]

Get Todo By ID 1
    ${response}=    GET On Session    jsonplaceholder    /todos/1
    Log    ${response.json()}[id]
    # Assertion
    Should Be Equal As Strings    1  ${response.json()}[id]

Create Todos
    &{data}    Create Dictionary    userId=1    title=Koding Bareng SQA
    # menggunakan json
    ${response}=    POST On Session    jsonplaceholder    /todos    json=${data}
    # menggunakan data
    # ${response}=    POST On Session    jsonplaceholder    /todos    data={"userId": 1, "title": "Koding Bareng SQA"}
    Log    ${response.json()}
    Should Be Equal As Strings    201  ${response.json()}[id]
    Log    ${response.status_code}
    Should Be Equal As Strings    201  ${response.status_code}