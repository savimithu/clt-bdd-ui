Feature: As a jootza customer, I want to be able to navigate to landing poage so that I can view product information

  @jootza @test1
  Scenario: Customer is displayed with jootza.com landing page
    Given I am on the "Walmart" portal

  @jootza @test
  Scenario: Customer is displayed with jootza.com landing page
    Given I am on the "Jootza" portal
    When I click on "Login"
    Then I should see "LoginHeader"

  @jootza @invalidCredentials @loginError
  Scenario: Customer is displayed with jootza.com login page
    Given I am on the Jootza portal
    When I click on "Login"
    # And I enter username "test"
    # And I enter password "test"
    And I enter inputs for the form fields
      | inputName | inputValue |
      | username  | Test       |
      | password  | Test       |
    And I click on "LoginBtn"
    Then I should see "errorMessage"



  @jootza @jootzaLogin
  Scenario: Customer is displayed with jootza.com landing page and tries to login into the portal
    Given I am on the Jootza portal
    And I enter the inputs for login
      | InputName | InputValue |
      | username  | kavithas   |
      | password  | demo1234   |
    And I click on "LoginBtn"
    Then I should see "WelcomeMessage"

  @validCredentials
  Scenario Outline:Customer is logged into the jootza portal automatically as a valid user
    Given I am logged on into the Jootza portal as "<username>" with "<password>"
    Then I should see the approver name as "<Approver>"
    Examples:
      | username   | password | Approver     |
      | Shanuser12 | demo1234 | Shan Approver |
      | kavithas   | demo1234 | Kavitha Approver  |


  @jootza @checkApprover
  Scenario Outline: Customer is logging into the jootza website to verify the approver name
    Given I am logged on to the Jootza portal as "kavithas"
    Then I should see the approver name as "ADMIN, CLT"
    And I click on "Submit Button"

  @jootza @checkApprover
  Scenario Outline: Customer is logging into the jootza website to verify the approver name
    Given I am logged on to the Jootza portal as "Shanuser12"
    Then I should see the approver name as "Adams, Jimmy"
    And I click on "Submit Button"

  @jootza @checkApprover
  Scenario Outline: Customer is logging into the jootza website to verify the approver name
    Given I am logged on to the Jootza portal as "<Jootza Customer>"
    Then I should see the approver name as "<approverName>"
    And I click on "Submit Button"
    Examples:
      | Jootza Customer | approverName |
      | kavithas        | ADMIN, CLT   |
      | Shanuser12      | Adams, Jimmy |

  @jootza @recordTime
  Scenario Outline: Customer is logging into the jootza website to record time
    Given I am on logged on to the Jootza portal as "<Jootza Customer>"
    And I enter notes field for days
      | FieldName      | FieldValue                      |
      | MondayNotes    | Worked on User story CLT-B3-009 |
      | TuesdayNotes   | Worked on User story CLT-B3-009 |
      | WednesdayNotes | Worked on User story CLT-B3-009 |
      | ThursdayNotes  | Worked on User story CLT-B3-009 |
      | FridayNotes    | Worked on User story CLT-B3-009 |
    And I click on  "Submit"
#Then I should see "Timesheet Created"  Message