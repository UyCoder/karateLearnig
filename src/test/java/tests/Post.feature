Feature: Post api request
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=eChrICjIWQs&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=6

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read('responseForPostFeatureFile.json')

  Scenario: Post demo 1 -- simple post
    Given url 'https://reqres.in/api/users?page=2'
    And request {"name":"Raghav","job":"leader"}
    When method POST
    Then status 201
    And print response

  Scenario: Post demo 2 -- post with background
    Given path '/users'
    And param page = 2
    And request {"name":"Raghav","job":"leader"}
    When method POST
    Then status 201

  Scenario: Post demo 3 -- post with assertion
    Given path '/users'
    And param page = 2
    And request {"name":"Raghav","job":"leader"}
    When method POST
    Then status 201
    And print response
    And match response == {"name": "Raghav", "job": "leader", "id": "#ignore", "createdAt": "#ignore"}

    Scenario: Post demo 4 -- assertion with background expected response file
      Given path '/users'
      And param page = 2
      And request {"name":"Raghav","job":"leader"}
      When method POST
      Then status 201
      And print response
      And match response == expectedOutput
      # dollar sign $ also means response in karate
      And match $ == expectedOutput

  Scenario: Post demo 5 -- read request body data from the specific file
    Given path '/users'
    And param page = 2
    And def requestBody = read(userdata.json)
    When method POST
    Then status 201
    And match $ == requestBody
    And print response



