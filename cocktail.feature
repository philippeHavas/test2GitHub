#Author: Philippe
Feature: Cocktail Ordering
  
      As Romeo, I want to offer a drink to Juliette so that we can discuss together (and maybe more).

  Background: 
    Given Romeo who wants to buy a drink

  Scenario: Creating an empty order
    When an order is declared for Juliette
    Then there is 10 cocktails in the order

  Scenario Outline: Sending a message with an order
    When an order is declared for <to>
    And a message saying "<message>" is added
    Then the ticket must say "<expected>"

    Examples: 
      | to       | message     | expected                            |
      | Juliette | Wanna chat? | From Romeo to Juliette: Wanna chat? |
      | Jerry    | Hei!        | From Romeo to Jerry: Hei!           |
