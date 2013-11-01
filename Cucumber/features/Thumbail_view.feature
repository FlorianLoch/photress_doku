Feature: Thumbnail_view
	As a visitor (or any other defined role) 
	I want to see small previews of images
	In order to get an overview of the images

	Scenario: Gallery is displayed in Thumbnail-view-mode
		Given I click on the link to the gallery
			And Gallery uses thumbnail view
			And Gallery contains any visible images
			And the container holding the thumbails has got id "container"
		When the page finishes rendering
		Then "#container" contains img-tags showing the thumbnails
	
	Scenario: No images available
		Given I click on the link to the gallery
			And Gallery uses thumbnail view
			And Gallery does not contain images
			And the container holding the thumbails has got id "container"
		When the page finishes rendering
		Then "#container" contains "No Images available"