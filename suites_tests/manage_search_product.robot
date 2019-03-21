*** Settings ***
Documentation               The User Test Case is For sarch product in Amazon
Resource                    ../ressources/variables/var.txt
Resource                    ../ressources/implementation_methods/manage_search_product.txt
*** Test Cases ***
Search product in Amazon
                            Open Amazon Browser
                            Input product name                                                ${PRODUCT}
                            Click search button
                            The results page should be opned

