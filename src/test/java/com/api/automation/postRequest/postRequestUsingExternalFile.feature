Feature: To verify the how post resquest work in real time 

		Background: setup URL
					Given url "http://localhost:9090"
					
					Scenario: To create a resourse using Post Request Data come's external file in json format
							Given path "/normal/webapi/add"
							And headers {Accept: "application/json", Content-Type: "application/json"}
							* def jsonBody = read("data/jobEntry.json")
							When request jsonBody
							And method post
							Then status 201
							And print response
							And match response.jobId == 10