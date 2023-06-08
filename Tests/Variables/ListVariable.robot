*** Settings ***
Library   Collections

*** Variables ***
@{fruits}    Orange    Apple    Mango    Avocado
${startNumber}    1
${endNumber}    10
@{numbers}

*** Test Cases ***
Print item from fruits with Log
  Log    ${fruits}

Print item from fruits with For
  FOR  ${fruit}  IN  @{fruits}
      Log    
      ...    ${fruit}
  END
  
# Menampilkan angka yang genap / ganjil
Print odd numbers
  FOR  ${number}  IN RANGE    ${startNumber}    ${endNumber}
      Run Keyword If     
      ...    ${number} % 2 == 1   
      # 1,3,5,7,9 
      # Append To List -> Library Collection
      ...   Append To List    ${numbers}    ${number} 
  END
  Log
  ...    ${numbers}
  