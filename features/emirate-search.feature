Feature: As an Emirates customer, i want to navigate to search flight feature 

@Emirates @searchflights
Scenario: Customer is diaplayed with search flight Header
Given I am on the Emirates website
When I click on Book header
Then I should see Search flights header

@Emirates @BookAFlight
Scenario: Customer is displayed with Book a flight Header
Given I am on the Emirates website
When I click on Book header
And I click on search flights header
Then I should Book a flight header

@Emirates @Whereandwhen
Scenario: Customer is displayed with where and when Header
Given I am on the Emirates website
When I click on Book header
And I click on search flights header
Then I should see where and when header

@Emirates @Roundtrip
Scenario: Customer is dispalyed with Round trip Option button
Given I am on the Emirates website
When I click on Book header
And I click on search flights header
Then I should see Round trip Option button 

@Emirates @DepartureAirport
Scenario: Customer is displayed with Departure Airport Text Box
Given I am on the Emirates website
When I click on Book header
And I click on search flights header
Then I should see Departure Airport Text box

@Emirates @ArrivalAirport
Scenario: Customer is displayed with Arrival Airport Text Box
Given I am on the Emirates website
When I click on Book header
And I click on search flights header
Then I should see Arrival Airport Text box





