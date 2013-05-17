Feature: Messaging
  In order to send messages
  As a user 
  I want to be told click a button and write a message

  Background:
    Given there are 10 users
    And I am a registered user
    And I am loged in as "corey@test.com"

  Scenario: click a button on the user page and write a message to teh user

    Given I am on a users page
    When I press the message <button>
    Then a message form should ajax onto the page