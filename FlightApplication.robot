*** Settings ***
Suite Teardown    Close Browser
Library           SeleniumLibrary
Resource          Commonkeywords.txt

*** Test Cases ***
TC01_LoginScreen_ObjectsOnThePage
    LoginAndNavigateToURL
    ChangeToIFrame
    ObjectsOnThePage

TC02_LoginScreen_Default text for username and password
    LoginAndNavigateToURL
    ChangeToIFrame
    DefaultValuesUsernamePassword

TC03_LoginScreen_EmptyUserid
    Set Selenium Speed    0.5
    LoginAndNavigateToURL
    Maximize Browser Window
    ChangeToIFrame
    EmptyUserIdField

TC04_LoginScreen_EmptyPassword
    Set Selenium Speed    0.5
    LoginAndNavigateToURL
    Maximize Browser Window
    ChangeToIFrame
    EmptyPasswordField

TC05_LoginScreen_EmptyUserNameAndPassword
    Set Selenium Speed    0.5
    LoginAndNavigateToURL
    Maximize Browser Window
    ChangeToIFrame
    EmptyUsernameAndPasswordFields

TC06_LoginScreen_InvalidUsernameField
    Set Selenium Speed    0.5
    LoginAndNavigateToURL
    Maximize Browser Window
    ChangeToIFrame
    InvalidUserIdField

TC07_LoginToBookYourFlightsPage_NOT_READY
    LoginAndNavigateToURL
    Maximize Browser Window
    ChangeToIFrame
    LoginFlightApplication    ${userId}    ${password}
    Select Frame    xpath://*[@id="iframe-114"]
    Wait Until Element Is Enabled    xpath://font[contains (text(),'Book your Flight')]    5    Did not shown
    #Select Frame    xpath://*[@id="iframe-114"]
    #Click Element    xpath://font[

TC08_NavigateToBookYourFlight
    NavigateToBookTheFlightPage

TC09_BookYourFlightPage_Buttons
    NavigateToBookTheFlightPage
    VerifyBookYourFlightsPageButtons

TC10_VerifyComponentsInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    VerifyManageBookingTabComponents

TC11_VerifyComponentsInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    VerifyManageBookingTabComponents

TC11_VerifyFromListInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    VerifyFromList_ManageBooking

TC12_LogOut
    NavigateToBookTheFlightPage
    Maximize Browser Window
    Click Button    xpath://button[contains (text(),'Log out')]
    ChangeToIFrame
    Page Should Contain Element    xpath://div[@class='box']//h1

TC13_VerifyToListInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    VerifyToList_ManageBooking

TC14_VerifyClassInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    VerifyClass_ManageBooking

TC15_VerifyRadioButtonsInManageBooking
    NavigateToBookTheFlightPage
    Maximize Browser Window
    sleep    5
    #ChangeToIFrame_Iframe-115
    CheckingRadioButtons

TC16_BookAFlight_1
    Set Selenium Speed    0.5
    NavigateToManageBookingTab
    FillBookingInformation
    ConfirmBooking

TC17_BookAFlight_2
    Set Selenium Speed    0.5
    NavigateToManageBookingTab
    FillBookingInformation_2
    ConfirmBooking

TC18_BookAFlight_3
    Set Selenium Speed    0.5
    NavigateToManageBookingTab
    FillBookingInformation_3
    ConfirmBooking

TC19_BookAFlight_4
    Set Selenium Speed    0.5
    NavigateToManageBookingTab
    FillBookingInformation_4
    VerifyMissingFlightRadioButtonText
