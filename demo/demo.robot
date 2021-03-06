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
${test}                             https://m.w88uatv2.com/_secure/ajax/api/apivx/grid-system/AUD/android/grid_world.json?_=
@{test_urls}                        https://m.w88uatv2.com/_secure/ajax/api/apivx/grid-system/AUD/android/grid_world.json?_=
...                                 https://m.w88uatv2.com/_secure/ajax/api/apivx/grid-system/USD/android/grid_world.json?_=
...                                 https://m.w88uatv2.com/_secure/ajax/api/apivx/grid-system/RMB/android/xgrid_world.json?_=
