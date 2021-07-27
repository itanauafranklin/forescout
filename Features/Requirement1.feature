
#Requirements
# - A user should be able to login and logout to/from the application.  
# - The only valid credential should be the credentials created by the candidate to login into the application. - OK
# - All the other links present on the “Log in” page should be accessible. 


Feature: Login

  I want to validate the login on Zalando.ie

Background:
    Given the user is in the login page
    And the field 'email' is empty
    And the field 'password' is empty

Scenario: Validanting empty fields
    When the user click on 'Login'
    Then field 'email address' shows a message 'This field is required'
    And field 'password' shows a message 'This field is required'

Scenario Outline: Login failed
    When the user enter <email>
    And the user enter <password>
    And the user click on 'Login'
    Then the user should see a message 'Check that you have the right email address or password'
        Exemples:
        |email                     | password    |
        |forescout@gmail.com       | Forescout123|
        |forescout.user@gmail.com  | 123forescout|
        |forescout@gmail.com       | 123forescout|


Scenario: Login successfully
    When the user enter the 'Credentials'
        |email                     | password    |
        |forescout.user@gmail.com  | Forescout123|
    And the user click on 'Login'
    Then the user see the main page



Feature: Log out

I want to logout on Zalando.ie

Scenario: Logout successfully
    Given the user is logged in
    And the Your account dropdown menu is active 
    When the user click on 'Log out'
    Then user is logged out
    


Feature: links present on the “Log in” page

I want check the links presents on the log in page

Scenario: Validanting forgot password link
    Given user is log in page 
    When the user click on 'Forgotten your password?'
    Then user goes to Forgot password page.
    

Scenario: Validanting New Customer link
     Given user is log in page
     When the user click on 'Register here'
     Then user goes to register page
     And user see a blank register form 



