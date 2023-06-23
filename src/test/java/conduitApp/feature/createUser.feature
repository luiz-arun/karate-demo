@parallel=false
Feature: Create user

    Background: Define URL
        * url apiUrl

        @ignore
    @POSTCreateUser
    Scenario: Create new user
        Given path '/api/users'
        When method POST