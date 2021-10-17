Feature: Put API Demo
# This code is written from the youtube video with link blow
# https://www.youtube.com/watch?v=m_7kCwbM5Gw&list=PLhW3qG5bs-L-y5Q1zDXJAur1JNZVFB534&index=7


  Scenario: Put demo 1 -- simple
    Given url 'https://reqres.in/api/user/2'
    And request {"name":"Raghav","job":"leader"}
    When method PUT
    Then status 200
    And print response