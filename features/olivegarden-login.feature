Feature: As a customer, I am able to view olivegarden home page and  login

    @olivegarden @home

    Scenario: Customer is displayed with olivegarden page and able to navigate to Login page
        Given I am on the olivegarden page
        When I click on the "login"
        Then I should see a "loginheader"

    @olivegarden @login

    Scenario: Customer is displayed with olivegarden home page and tries to login with valid input
        Given I am on the olivegarden page
        When I click on the "login"
        And I enter the inputs for login
            | InputName | InputValue          |
            | email     | savimithu@gmail.com |
        And I enter the inputs for login
            | InputName | InputValue |
            | password  | Anithra_25 |
        And I click on the "login1"
        Then I should see a "menu"

    