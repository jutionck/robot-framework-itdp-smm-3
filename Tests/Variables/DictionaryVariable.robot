*** Variables ***
&{employee}    name=John    age=22    address=Jakarta Selatan

*** Test Cases ***
Get item from employee with Log
  Log    
  ...    ${employee}
  Log    
  ...    ${employee}[name]
  Log    
  ...    ${employee}[age]
  Log    
  ...    ${employee}[address]

Get item from employee with For
  FOR    
  ...    ${key}     
  ...    ${item}  
  ...    IN  
  ...    &{employee}
      Log    
      ...    ${key}:${item}
  END
  