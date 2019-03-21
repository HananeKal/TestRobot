*** Settings ***
Documentation    The user test case is for create amazon account
Resource     ../ressources/implementation_methods/manage_create_account.txt

*** Test Cases ***
Create amazon account
    Open amazon browser
    Open account menu
    Fill in the registration form
    The user store should opned