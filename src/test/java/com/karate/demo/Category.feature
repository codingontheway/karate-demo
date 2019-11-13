Feature: Test Category section

  Background:
    * url 'http://localhost:5000'
    * header Content-Type = 'application/json'
    * header x-auth-token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjoiNWQ2MTJhZTllMTVjOTkzYWYwNmEzYWY3In0sImlhdCI6MTU2NjY0OTA2NiwiZXhwIjoxNjE2NjQ5MDY2fQ.xyRWTWRJUroPfzofsA43YCCb6Td0dzAxt2OmGk-ewpU'


  Scenario: get all categories
    Given path '/categories'
    When method get
    Then status 200

  Scenario: get category by ID and assure that the title is cat1
    Given path '/categories/5d6ac60790b6610de804de4a'
    When method get
    Then status 200
    And match response contains {title: 'cat1'}

  Scenario: add new Category
    Given path '/categories'
    And request {"title" : "karate2","description": "karate2 demo","imageUrl" : "https://i.imgur.com/efFH5RZ.jpg"}
    When method post
    Then status 200

  Scenario: delete category
    Given path '/categories/5dcc5c6f631d9d54f0e54e78'
    When method delete
    Then status 200


