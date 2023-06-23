@parallel=false
Feature: Assert the users

    Background:
        * def userList = 'this:Articles.feature@GETListOfUsers'
        * def createAUser = 'this:createUser.feature@POSTCreateUser'


    @validateTheText
    Scenario: Get the list of users
        Given param page = 2
        When call read(userList)
        Then match response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"

    # @createNewUser
    # Scenario: Create a new user
    #     When call read(createAUser)
    #     And request  
    #     """
    #         {
    #     "name": "morpheus",
    #     "job": "leader"
    #         }
    #     """
    #     Then response.status == 200