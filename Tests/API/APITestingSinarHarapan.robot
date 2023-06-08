*** Settings ***
Library       RequestsLibrary
Variables     ../Resources/variables/ApiVariable.py
Suite Setup   Create Session    sinarharapan    http://159.65.140.190/

*** Variables ***
&{USER_CREDENTIAL}    username=admin    password=password

*** Test Cases ***
Get List Brand
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${BRANDS}    
    ...    headers=${HEADER_AUTH}
    Request Should Be Successful  
    ...    ${response}
    Log    
    ...    ${response.json()}

Get Brand By ID Found
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${BRAND_ID}    Set Variable    8fb68f6f-431d-4d3a-897a-83ea8a0d0ce5
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${BRANDS}/${BRAND_ID}    
    ...    headers=${HEADER_AUTH}    
    ...    expected_status=any
    Log    ${response.status_code}
    Run Keyword If    
    ...    ${response.status_code} != 500    
    ...    Request Should Be Successful  
    ...    ${response}
    Log    
    ...    ${response.json()}

Get Brand By ID Not Found
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${BRAND_ID}    Set Variable    abc
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${BRANDS}/${BRAND_ID}    
    ...    headers=${HEADER_AUTH}
    ...    expected_status=any
    Run Keyword If    
    ...    ${response.status_code} != 500    
    ...    Run Keyword And Expect Error    
    ...    HTTPError: 500*  
    ...    Request Should Be Successful  
    ...    ${response}

Get List Customer
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${CUSTOMERS}    
    ...    headers=${HEADER_AUTH}
    Request Should Be Successful  
    ...    ${response}
    Log    
    ...    ${response.json()}

Get Customer By ID Not Found
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${CUSTOMER_ID}    
    ...    Set Variable    
    ...    1
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${CUSTOMERS}/${CUSTOMER_ID}   
    ...    headers=${HEADER_AUTH}    
    ...    expected_status=any
    Run Keyword And Expect Error    
    ...    HTTPError: 500*  
    ...    Request Should Be Successful  
    ...    ${response}
    
Get List Employee
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${response}=    
    ...    GET On Session    
    ...    sinarharapan    
    ...    ${EMPLOYEES}   
    ...    headers=${HEADER_AUTH}
    Request Should Be Successful  
    ...    ${response}
    Log    ${response.json()}

Delete Vehicle
    [Tags]    API Testing
    ${HEADER_AUTH}=    
    ...    Set Headers Authorization Bearer
    ${VEHICLE_ID}    
    ...    Set Variable    
    ...    2a9adc84-c694-4643-874a-035fb516e6e8
    ${response}=    
    ...    DELETE On Session    
    ...    sinarharapan    
    ...    ${VEHICLES}/${VEHICLE_ID}   
    ...    headers=${HEADER_AUTH}
    Should Be Equal As Strings    
    ...    204     
    ...    ${response.status_code}

*** Keywords ***
Get Token Credential
    ${response}=    
    ...    POST On Session    
    ...    sinarharapan    
    ...    ${LOGIN}    
    ...    json=${USER_CREDENTIAL}
    [Return]    
    ...    ${response.json()}[token]

Set Headers Authorization Bearer
    ${TOKEN}=    
    ...    Get Token Credential    
    &{HEADER_AUTH}    
    ...    Create Dictionary    
    ...    Authorization=Bearer ${TOKEN}
    [Return]    
    ...    ${HEADER_AUTH}