Feature: Delete API Demo
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=iHCTs8qT_A8&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=8

  Scenario: delete demo 1
    Given url 'https://reqres.in/api/user/2'
    When method DELETE
    Then status 204
    And print response