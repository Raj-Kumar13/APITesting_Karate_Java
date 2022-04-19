Feature: Validate the data present on the external file 

Background:to Validate the data from External file
	Given url "http://localhost:9090"
	
	Scenario: validate Json data present on external file
		And path '/normal/webapi/all'
		And header Accept = 'application/json'
		When method get
		Then status 200
		#Create a veriableto storethe data from external file
		* def actualResponse = read("../PayloadJSONData.json")
		And match response  == actualResponse