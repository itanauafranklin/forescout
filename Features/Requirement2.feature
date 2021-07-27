# - A user should be able to add and remove items in/from the cart.
# - The cart page should show correct information regarding the selected items for buying. 
# - The total section should show the correct information based on the items from the cart.

Feature: Adding/Removing items 

  I want to add and remove items in/from my cart
    

Scenario: Adding items in the cart
    Given the user is in the item detail page
    And the user selected the size
    When the user click on 'Add to bag' 
    Then the user see 'your bag' dropdown menu with the item added 
    

Scenario: Removing items from the cart
	Given the user is in the cart page
	And user has items in your bag
	When user click on 'Remove' 
	Then user see the message 'This item has been removed.'
	And the Total value is updated.


Scenario: Validating Total section
	Given the user added a new item to the cart
	When user goes to cart page
	Then user see total value updated.


Scenario: validating quantity of items 
	Given the user is in the cart page
	And user has items in your bag
	Then user see the quantity of items added in the bag