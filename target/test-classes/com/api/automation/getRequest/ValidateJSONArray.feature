Feature: to validate the GET Method response using Match key word with JSON Array

	Background: To setup base URL
		Given url 'http://localhost:9090'
		
		Scenario: to validate  the JSON Format data using Match keyword
		
		Given path '/normal/webapi/all'
		And header Accept = 'application/json'
		When method get
		Then status 200
		And print response
		And print "==============================================================="
		#And match response.[0].jobId == 1
		#And match response.[0].jobTitle == "Software Engg"
		#And match response.[0].jobDescription == "To develop andriod application"
		#And match response.[0].experience.[0] == 'Google'
		#And match response.[0].experience.[1] == "Apple"
		#And match response.[0].experience.[2] == "Mobile Iron"
		#And match response.[0].project.[0].projectName == "Movie App"
		#And match response.[0].project.[0].technology.[0] == "Kotlin"
		#And match response.[0].project.[0].technology.[1] == "SQL Lite"
		#And match response.[0].project.[0].technology.[1] == "Gradle"
		
		#Using wild card 
		
	#	And match response.[0].project.[0].technology[*] contains "Gradle"
	#	And match response.[0].experience[*] contains "Mobile Iron"
	
	#How to validate size of Array
		
		#And match response.[0].project.[0].technology[*] == "#[3]"
		And match response.[0].experience[*] == "#[3]"