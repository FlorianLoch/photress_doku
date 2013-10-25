Feature: Manage_galleries_(CRUD)
	A registered user and a administrator of a selhosted instance have the 
	possibility to manage their galleries respectively the galleries owned by other
	users but hosted on her/his instance. This includes beside the CRUD-functionalities
	a list of all assigned galleries respectively of all galleries run of ones instance.
	
	Scenario: Listing galleries
		Given I am logged in as user
			And I already created a gallery
			And I navigated to the gallery list
		When the page becomes display
			And all data has been loaded
		Then the container with id "galleries_list" contains a list of my galleries
		
	Scenario: Listing galleries as owner of a instance
		Given I am hosting my own instance
			And I logged in successfully
			And anybody using my instance (or myself) created a gallery
			And I navigated to the gallery list
		When the page becomes display
			And all data has been loaded
		Then the container with id "galleries_list" contains a list of all galleries hosted on my instance		
