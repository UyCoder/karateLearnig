Feature: Config Demo
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=QyLXiJsrOiE&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=9

  Background:
    * url baseUrl


  Scenario: Config Demo
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response