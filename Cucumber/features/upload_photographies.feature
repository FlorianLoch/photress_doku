Feature: upload photographies to my own account

  
	As an registered user
  
	I want to upload my photographies to my account
  
	So I can view and share them later.

  
	Scenario: upload a single photo "awesome_picture.png"
    
		Given I am logged in
    
			And I am a valid user
    
			And I am on the "Upload images on my account"-page
    
		When I click on the select image button
    
			And I select the image "awesome_picture.png" on my storage
    
			And I click ok

			And I click upload
    
			And the upload is finished
    
		Then I should see a message which says "Successfully uploaded your picture awesome_picture to your account"

   			And the picture should have the filename
  

	Scenario: upload multiple photos "awesome.png", "cool.jpg", "test.gif"
    
		Given I am logged in
    
			And I am a valid user
    
			And I am on the "Upload images on my account"-page
    
		When I click on the select image button
    
			And I select multiple images on a storage
    
			And I click ok
    
			And I click upload
    
			And the upload is finished
    
		Then I should see a message which says "Successfully uploaded your pictures awesome, cool and test."

  Scenario: upload multiple photos "awesome.png", "cool.jpg" and one invalid file "virus.exe"
    Given I am logged in
    And I am a valid user
    And I am on the "Upload images on my account"-page
    When I click on the select image button
    And I select the images "awesome.png" and "cool.jpg" and the invalid file "virus.exe"
    And I click ok
    And I don't specifiy multiple image names
    And I click upload
    And the upload is finished
    Then I should see a message which says "Successfully uploaded your pictures awesome and cool."
    And I should see a message which says "But there was a problem with 'virus.exe' - It's an invalid file."