Feature: user registration on Photress


	As an unregistered user
  
	I want to register myself
  
	So I can use the awesome services of Photress

  

	Scenario: register myself correctly
    
		Given I am on the login/register page
    
			And I click on register
    
			And I enter "Adracus" as user name
    
			And I enter "test123" as password
    
			And I enter "test123" as repeated password
    
			And I enter "adracus@gmail" as mail address
    
			And I enter "Axel" as first name
    
			And I enter "Christ" as last name
    
			And I enter "Germany, Karlsruhe" as address
    
			And I press "Go"
    
	Then I should be redirected to the login-success page
    
		And I should see "A verification mail to your account has been sent"

  
	
	Scenario: register myself incorrectly
    
		Given I am on the login/register page
    
			And I click on register
    
			And I enter "Adracus" as user name
    
			And I press "Go"
    
		Then I should stay on the login/register page
    
			And I should see the missing fields highlighted as missing