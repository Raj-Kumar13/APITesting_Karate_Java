Feature: To create a new Job entry in application
	
	Background: to set a base url
			Given url "http://localhost:9090"
			
			#Scenario: to create a new resource using Post Request
			Given path "/normal/webapi/add"
		
			When request {"jobId": 4, "jobTitle": "Software Engg-4","jobDescription": "To develop andriod application","experience": ["Micro Soft","JP Morgan","Youtube"],"project": [{"projectName": "Streaming scervic App","technology": [  "Kotlin","SQL Lite","Gradle","pega"]}]}
			And headers {Accept: "application/json", Content-Type: "application/json"}
			And method post
			
			Then status 201
			And print response
			And match response.jobId == 4
			
			Scenario: to create a new reource using Post request XML formate
			Given path "/normal/webapi/add"
			When request <item><jobId>5</jobId><jobTitle>Software Engg-5</jobTitle><jobDescription>To develop IOS application</jobDescription><experience><experience>Google</experience><experience>Apple</experience><experience>Mobile Iron</experience></experience><project><project><projectName>Booking App</projectName><technology><technology>Fullter</technology><technology>SQL Lite</technology><technology>Gradle</technology></technology></project></project></item>
  	  And headers {Accept: "application/xml", Content-Type: "application/xml"}
  	  And method post
  	  Then status 201
 	   And match response.jobId == 5