*** Settings ***
Library                             AioHTTPLibrary



*** Test Cases ***
Sample Test
    HTTP Test Urls                  ${EXECDIR}/urls.txt         100


*** Keywords ***
