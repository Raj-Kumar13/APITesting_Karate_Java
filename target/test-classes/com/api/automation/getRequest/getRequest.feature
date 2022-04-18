Feature: to test the get end point of the application 

	Background: set Base path
			Given url 'http://localhost:9090/'
			And print "======= In the Background Keyword ============"
	
	Scenario: To get all the data from application in JSON format
		
		Given path "normal/webapi/all"
		And header Accept = 'application/json'
		When method get 
		Then status 200
		And print response 