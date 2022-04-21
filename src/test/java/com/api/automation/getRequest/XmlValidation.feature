Feature: To validate XML formate data 

Background: setup a url
Given url 'http://localhost:9090'

	Scenario: To validate Properties of XML format
	Given path '/normal/webapi/all'
	And header Accept = "application/xml"
	When method get
	And print response
	
	Then status 200
	#And print response
	#And match response/List/item/jobId == "1"
	#And match response/List/item/jobTitle == "Software Engg"
	#And match response/List/item/jobDescrition == "To develop android application"
	#And match response/List/item/experience/experience[1] == "Google"
	#And match response/List/item/exprience/experience[2] == "Apple"
	#And match response/List/item/exprience/experience[3] == "Mobile Iron"
	#And match response/List/item/project/project/projectName == "Movie App"
  #And match response/List/item/project/project/technology[1] == "Kotlin"
  #And match response/List/item/project/project/technology[2] == "SQL Lite"
  #And match response/List/item/project/project/technology[3] == "Gradle"