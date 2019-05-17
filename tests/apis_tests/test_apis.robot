*** Settings ***
Library  RequestsLibrary


*** Test Cases ***
API testing
  create session  github  http://api.github.com
  ${resp}=  get request  github  /users/bulkan
  log  ${resp}
