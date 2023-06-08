# Kumpulan libraries yang digunakan pada project kita
*** Settings ***
# cara import sebuah library -> DateTime
Library    DateTime
# Tidak hanya library saja, tetapi kita juga bisa import file .robot lainnya dan file seperti .resource, .py (resource file)

*** Test Cases ***
Get Current Date
  # Ini adalah sebuah variabel dalam robot framework
  ${date}    Get Current Date
  Log    Current Date: ${date}

# Output => -o --output
# Log => -l --log
# Report => -r --report