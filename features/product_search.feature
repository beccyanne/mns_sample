Feature: Search available products

As a customer
I want to have the ability to search for products online
So that I can browse product availability

Scenario: Ability to search for a product
    Given there are "Socks" available online
    When the customer searches for "Socks"
    Then all available "Socks" should be presented to the user
    And message "Search results for Socks" should be displayed

Scenario: Warn the user when no matches or alternatives are returned when searching a product
    Given there are no "!NV4L1D PR4DUCT" available online
    When the customer searches for "!NV4L1D PR4DUCT"
    Then message "sorry we couldn't find anything to match your search" should be displayed