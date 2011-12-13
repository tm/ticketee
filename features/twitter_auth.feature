Feature: Twitter auth
  In order to sign in using Twitter
  As Twitter user
  I want to click an icon and be signed in

  Background:
    Given we are mocking a successful Twitter response

  Scenario: Signing in with Twiiter
    Given I am on the homepage
    When I follow "sign_in_with_twitter"
    Then I should see "Signed in with Twitter successfully."
    And I should see "Signed in as A Twit (@twit)"
