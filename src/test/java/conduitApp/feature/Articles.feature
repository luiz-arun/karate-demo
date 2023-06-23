@parallel=false
Feature: Articles

    Background: Define URL
        * url apiUrl
        * def userList = 'this:/Articles.feature@GETListOfUsers'

        @ignore
    @GETListOfUsers
    Scenario: Get the list of users
        Given path '/api/users'
        When method GET
        # Then match response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"

    # @validateTheText
    # Scenario: Get the list of users
    #     When call read(userList)
    #     Then match response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"