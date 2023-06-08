*** Settings ***
Library  Collections

*** Variables ***
# List
@{programmingLanguage}    Go  Ruby  JavaScript  Kotlin
# Dictionary
&{employee}    name=John    age=22

*** Test Cases ***
Access variable
  # ['Go', 'Ruby', 'JaavScript', 'Kotlin']
  Log    ${programmingLanguage} 
  Log Many    @{programmingLanguage}
  Log Many    ${programmingLanguage}
  Log List    ${programmingLanguage}

  Log    ${programmingLanguage}[0]
  # Salah
  # Log    @{programmingLanguage}[0]
  FOR  ${item}  IN  @{programmingLanguage}
      Log
      ...    ${item}
  END
  

  Log    ${employee}[name]
  Log Many    &{employee}
  FOR  ${key}    ${item}  IN  &{employee}
      Log
      ...    ${key} ${item}
  END

  FOR  ${key}    IN  &{employee}
      ${item}    Get From Dictionary    &{employee}
      Log
      ...    ${key}:${item}
  END
  
