#An authenticated user should be able to browse the items from one clothing category: filtering, sorting
#and page navigation. So the results should be:
#		1. Choosing an option for Sort by causes the sorting of the items based on the criteria chosen.
#		2. Choosing options for the available filters causes the display of the items that fulfill the filtering
#		   criteria.
#		3. A page jump causes the page to display different data.


Feature: Sorting

  I want to sort and filter my products from clothing category

Scenario Outline: Visitor can sort/filter 
    Given the user is in <cathegory> page
    When the user click on <sort by> dropdown menu
    And the user click on <size> dropdown menu
    Then the user see the correct result page
    Examples:
    		|     cathegory 	 |    sort by 	   | size  |
    		| "Women's T-shirts" | "Lowest Price"  | "6"   |
    		| "Women's Coats"    | "Highest Price" | "8"   |
    		| "Women's Skirts"   | "Sale"		   | "4"   |  


Scenario: validanting page jump
	Given the user is in one clothing category
	When the user reach the end of the page
	And the user click on jump page 
	Then the page is updated with different data