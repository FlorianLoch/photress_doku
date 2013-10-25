Feature: Thumbnail_view
	In order to get an overview of images as a 
	visitor (or any other defined role) this is needed.

	Scenario: Gallery is displayed in Thumbnail-view-mode
		Given I click on the link to the gallery
			And Gallery uses thumbnail view
			And Gallery contains any visible images
			And the container holding the thumbails has got id "container"
		When the page finishes rendering
		Then "#container" contains img-tags showing the thumbnails
