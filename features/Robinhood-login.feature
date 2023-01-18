Feature: As a Robinhood User, I want be able to navigate to login page so that I can do trading.

    @login
    Scenario: User is displayed with Robinhood.com login page
        Given I am on the Robinhood website
        When I cick on log in link
        Then I should see Log into Robinhood login page

    @email
    Scenario:  User is displayed with Robinhood Email text box
        Given I am on the Robinhood website
        When I cick on log in link
        And I should see Log into Robinhood login page
        Then I should see Email text box

    @password
    Scenario: User is dispalyed with Robinhood Password text box
        Given I am on the Robinhood website
        When I cick on log in link
        Then I should see Log into Robinhood login page
        And I should see Password text box
        When I enter with blank Text
        Then I should see pop up meassage"please fill out this field"

    @checkbox
    Scenario: User is displayed with Robinhood keep me logged in check box
        Given I am on the Robinhood website
        When I cick on log in link
        And I should see Log into Robinhood login page
        Then I should see keep me logged in for up to 30 days

    @Forgotpassword
    Scenario: User is displayed with Robinhood Forgot your password link
        Given I am on the Robinhood website
        When I cick on log in link
        And I should see Log into Robinhood login page
        Then I should see Forgot your password link

    @ForgotEmail
    Scenario: User is displayed with Robinhood Forgot your Email link
        Given I am on the Robinhood website
        When I cick on log in link
        And I should see Log into Robinhood login page
        Then I should see Forgot your Email link







