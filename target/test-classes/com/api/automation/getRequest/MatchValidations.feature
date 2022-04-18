Feature: to validate the GET Method response using Match key word

	Background: To setup base URL
		Given url 'http://localhost:9090'
		
		Scenario: to validate  the JSON Format data using Match keyword
		
		Given path '/normal/webapi/all'
		And header Accept = 'application/json'
		When method get
		Then status 200
		And match response ==
	"""	[
  {
    "jobId": 1,
    "jobTitle": "Software Engg",
    "jobDescription": "To develop andriod application",
    "experience": [
      "Google",
      "Apple",
      "Mobile Iron"
    ],
    "project": [
      {
        "projectName": "Movie App",
        "technology": [
          "Kotlin",
          "SQL Lite",
          "Gradle"
        ]
      }
    ]
  }
]
"""