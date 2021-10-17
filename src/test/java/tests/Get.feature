Feature: Get method learning
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=uFAbRtCjHAQ&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=5

  Background:
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'


  Scenario: Get Demo 1 -- simple get request
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

    Scenario: Get Demo 2 -- get with background
      Given path '/users?page=2'
      When method GET
      Then status 200
      And print response


  Scenario: Get Demo 3 -- Path and params
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  Scenario: Get Demo 4 -- with assertions
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[1].id == 8
    And match $.data[3].last_name == 'Fields'
