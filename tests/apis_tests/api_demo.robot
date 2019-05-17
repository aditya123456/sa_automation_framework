*** Settings ***
Library    ../../libs/apis/CSVLibrary.py
Library    RequestsLibrary

*** Test Cases ***
API Demo Post Request
   ${all_values}=  read test data  sample.csv  TC1
   log  ${all_values}
   post request  headers=${all_values}[0]  url=${all_values}[1]  data=${all_values}[2]


*** Test Cases ***
API Demo Get Request
   ${all_values}=  read test data  sample.csv  TC2
   log  ${all_values}
   Get request  headers=${all_values}[0]  url=${all_values}[1]

*** Test Cases ***
API Demo Put Request
   ${all_values}=  read test data  sample.csv  TC3
   log  ${all_values}
   PUT REQUEST   headers=${all_values}[0]  url=${all_values}[1] data=${all_values}[2]

*** Test Cases ***
API Demo Patch Request
   ${all_values}=  read test data  sample.csv  TC4
   log  ${all_values}
   patch request  headers=${all_values}[0]  url=${all_values}[1] data=${all_values}[2]


*** Test Cases ***
API Demo Delete Request
   ${all_values}=  read test data  sample.csv  TC5
   log  ${all_values}
   patch request  headers=${all_values}[0]  url=${all_values}[1] data=${all_values}[2]