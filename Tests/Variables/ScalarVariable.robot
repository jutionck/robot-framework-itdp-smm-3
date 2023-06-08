# *** Variables ***
# ${username}    john
# ${password}    password
# ${age}    20
# ${isStatus}    ${False}

# *** Test Cases ***
# Access Scalars Variable
#   Log    ${username}
#   Log    ${password}
#   Log    ${age}

# Check Username
#   Run Keyword If    '${username}' == 'johnnn'   
#   ...    Log    Passed    
#   ...    ELSE    
#   ...    Log    Fail


# Challenge
# Penjualan Sederhana -> Botol Minum C
#                        250.000,-
#                        0 s.d 5

# Cek Ketersediaan
# Jika stok product ada -> Botol Minum C tersedia
# Jika stok 0           -> Boto Minum C Habis

# Cek Total Belanja
#                          Botol Minum C (3)
#                          Total belanja 250.000 * 3 = xxxx

*** Variables ***
${product}    Botol Minum C
${stock}    5
${price}    250000
${promo}    ${True}

*** Test Cases ***
Check Availbility
  Run Keyword If    
  ...    ${stock} > 0    
  ...    Log
  ...    ${product} is avalaible    
  ...    ELSE    
  ...    Log
  ...    ${product} is out of stock

Check Total Price
  ${quantity}    
  ...    Set Variable    
  ...    1
  ${totalPrice}    
  ...    Evaluate    
  ...    ${quantity} * ${price}
  # Log    
  # ...    Total price for before discount (10%) ${product}: ${totalPrice}   
  # Jika ada promo (true) dan total belanjaan > 500.000,- dapat diskon 10%
  ${discount}    Evaluate     ${totalPrice} * 0.1
  ${totalPriceDiscount}    Evaluate    ${totalPrice} - ${discount}
  Run Keyword If
  ...    ${promo} and ${totalPrice} > 500000
  ...    Log    
  ...    Total price ${product}: ${totalPriceDiscount}
  ...    ELSE
  ...    LOG
  ...    Total price for ${product}: ${totalPrice}   