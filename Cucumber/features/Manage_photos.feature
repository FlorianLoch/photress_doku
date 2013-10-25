Feature:
As a Admin of hosted gallery
I want to organize photos in albums
so that I can manage my photos in albums.

	Scenario: create albums
	Given I am logged in
	And I am on the managing page
	When I click on "create new album"
	And I enter a valid name
	And click "Okay"
	Then I should see "successfully created a new album"
	And I should have a new album

	Scenario: put photo into album
	Given I am logged in
	And I am on the managing page
	When I drag "photo.png" from the list
	And drop it on the album "new album"
	And open "new album"
	Then I should see "photo.png"

	Scenario: delete album
	Given I am logged in
	And I am on the managing page
	And I have selected "new album"
	When and I click on "delete"
	And I click on "okay"
	Then I should see "deleted album 'new album'"
	And I should'nt see "new album"
