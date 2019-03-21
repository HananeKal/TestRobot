*** Settings ***
Documentation                                 A test suite containing tests related to invalid login.
Resource                                      ../ressources/implementation_methods/manage_connect.txt
Test Template                                 Login With Invalid Credentials Should Fail
Library                                       SeleniumLibrary
Suite Setup                                   Open amazon browser
Test Setup                                    Click on account menu


*** Test Cases ***
Invalid Email                                 invalid                                                    ${PASSWORD}
Invalid Password                              ${EMAIL}                                                   invalid
Invalid Email And Password                    invalid                                                    whatever
Empty Email                                   ${EMPTY}                                                   ${PASSWORD}
Empty Password                                ${EMAIL}                                                   ${EMPTY}
Empty Email And Password                      ${EMPTY}                                                   ${EMPTY}


*** Keywords ***
Login With Invalid Credentials Should Fail
                                              [Arguments]                                                ${email}       ${password}
                                              Input email                                                ${email}
                                              Input the password                                         ${password}
                                              Click submit
                                              Login Should Have Failed

Login Should Have Failed
                                              Page Should Not Contain                                    ${MESSAGE}


