*** Settings ***
Library                             AioHTTPLibrary



*** Test Cases ***
# Sample Test
#     HTTP Test Image Urls            ${EXECDIR}/urls.txt         100

Test Object Response
    ${resp}                         Async Get Request               ${test_urls}
    # Log To Console                  ${resp}\[${test_urls}[2]]
    FOR     ${r}                    IN      @{test_urls}
        Log To Console              ${r} ${resp}[${r}][status_code]
    END


*** Keywords ***


*** Variable ***
${test}                             https://m.test.url.com/path
@{test_urls}                        https://m.test.url.com/api/route
...                                 https://m.test.url.com/api/route
...                                 https://m.test.url.com/api/route
