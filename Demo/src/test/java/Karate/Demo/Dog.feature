Feature: junit5 test

Scenario: API request to produce a list of all dog breeds.

Given url 'https://dog.ceo/api/breeds/list/all'
When method GET
Then status 200


Scenario: To check the retriever is present in the results

Given url 'https://dog.ceo/api/breeds/list/all'
When method GET
Then status 200
And match response.message.retriever != null

Scenario:  API request to produce a list of sub-breeds for “retriever”.

Given url 'https://dog.ceo/api/breed/retriever/list'
When method GET
Then status 200
And match response == {"message":["chesapeake","curly","flatcoated","golden"],"status":"success"}

Scenario: API request to produce a random image / link for the sub-breed “golden”

Given url 'https://dog.ceo/api/breed/retriever/golden/images/random'
When method GET
Then status 200
And match response.status == 'success'
Then print response