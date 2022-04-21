Feature: To validate schema using JSON Formate

  Background: to setup URL
    Given url 'http://localhost:9090'

  Scenario: to create a resource and validate schema
    Given path "/normal/webapi/add"
    * def jsonBody = read("data/jobEntry.json")
    And request jsonBody
    And headers {Accept : "application/json", Content-Type: "application/json"}
    When method post
    Then status 201
    And match response ==
      """
      {
         "jobId": #number,
         "jobTitle": #string,
         "jobDescription": #string,
         "experience": #[] #string,
         "project": #[] #object	   
      }
      """
