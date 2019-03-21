*** Settings ***
Documentation         The user test case is for connect to amazon
Resource              ../ressources/implementation_methods/manage_connect.txt
Resource              ../ressources/variables/locator.txt
Resource              ../../TestAuto/ressources/variables/var.txt

*** Test Cases ***
Coonect to amazon
                      Open amazon browser
                      Click on account menu
                      Input email                                                ${EMAIL}
                      Input the password                                         ${PASSWORD}
                      Click submit
                      The user store should opned

