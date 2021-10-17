Feature: Api Tests
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=uFAbRtCjHAQ&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=5

  Scenario: Test API
    Given  url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200