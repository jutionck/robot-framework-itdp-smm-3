# Set global variable
*** Variables ***
# Scalars
${myVar}    My Value Global    My Value Globa Other
# List -> sama seperti array ada index
@{myList}    Apple    Mangga Manis    Orange
# Dictionary
&{myDict}    name=Johan    password=password

*** Test Cases ***
# TC 1
Sample variable scalar list and dictionary
  # variabel    Set Variable    Value
  ${myVar}    Set Variable    My Value Scope
  Log    ${myVar}
  Log    ${myList}
  Log    ${myDict}[name]

# TC 2
Sample other variable
  Log    ${myVar}