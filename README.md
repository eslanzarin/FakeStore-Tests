<h1 align="center"> Automated tests for FakeStoreAPI using Robot :robot: </h1>

**FakeStoreAPI** is a simple API to be used to get pseudo-real data for online stores and can be used in many other purposes, including testing. Click [here](https://fakestoreapi.com/) to get to the oficial API website and its [Github repository](https://github.com/keikaavousi/fake-store-api)

This repository uses `Robot Framework`, a Python Framework, for automation, due to its advantages regarding its simple sintax and multi-functionality. Some keywords were created in Python and implemented in the tests, imported as a library. 

## About the API
---
There are 4 endpoints, most used in e-commerce stores:

* [/products](https://fakestoreapi.com/products)
* [/cart](https://fakestoreapi.com/carts)
* [/users](https://fakestoreapi.com/users)
* [/auth/login](https://fakestoreapi.com/auth/login)

Until now, this repository only covers test cases for the Login and Products endpoints. Tests results are at the bottom of the page or clicking on its names below.

* [/products results](https://github.com/eslanzarin/FakeStore-Tests/tree/develop#shopping-products-results)
* [/carts results](https://github.com/eslanzarin/FakeStore-Tests/tree/develop#shopping_cart-carts-results)
* [/users results](https://github.com/eslanzarin/FakeStore-Tests/tree/develop#adult-users-results)
* [/auth/login results](https://github.com/eslanzarin/FakeStore-Tests/tree/develop#closed_lock_with_key-authlogin-results)

## :mega: Some important considerations: 
---
* The API is made to not have its data changed in any HTML method used. So, all the changes made will have a result, but when tried to be accessed through its Id, it will return an error message. Some examples:
    * When creating a new product using POST (or any other possible method), the API will return a code 200 (OK) and the created product, but when trying to access through the Id, nothing is found;
    * Same goes for a new users added to the API through any methos. Also, its data can't be used for login purposes, which can only be done using data from users that are in the API already;
    * About login: when successful, will return a bearer token, which isn't asked in any other endpoint or request throughout the application;
    * Also, most of the times, when adding data with incorrect parameters, it returns a succesful response which can be checked in the results below. Same goes when passing dictionary data as payload with keys missing;
    * About the results: the results don't have an expected response space because the documentation of the API is incomplete in this regards.
    * None of the points above are meant to criticize the creator(s) in any way, these are only considerations I've came through while studying the API and some are reasonable when thinking about the reason to be created (mainly to be used with GET method to help developers with their own applications).

## :shopping: /products Results 
---
### GET Method

| TEST CASE | TAG | RESPONSE |
|---|---|---|
|GET All Products|1|Status code: 200, list of products containing all of each informations in JSON format|
|GET Product By Id|2|Status code: 200, requested product and its information in JSON format|
|GET Product By Invalid Id|3|Status code: 200, blank body|
|GET Limit Products|4|Status code: 200, list with the amount of products from Id 1 to limited|
|GET Beyond Limit|5|Status code: 200, returns all the products|
|GET Negative Limit|6|Status code: 200, returns all the products minus the number in the limit|
|GET String Limit|7|Status code: 200, returns all the products|
|GET Sort Limit Ascending|8|Status code: 200, returns all the products in ascending Id order|
|GET Sort Limit Descending|9|Status code: 200, returns all the products in descending Id order|
|GET Sort Limit Invalid Word|10|Status code: 200, returns all the products in ascending Id order|
|GET All Products Categories|11|Status code: 200, returns all the products categories|
|GET All Products from All Categories|12|Status code: 200, returns all the products from all the categories, logs only the last request (due to how the function was made)|
|GET All Products from Inexistent Category|13|Status code: 200, returns blank body message|
|GET Products from Specific Category Limiting the Results|14|Status code: 200, returns info from the limited categories|
|GET Products from Specific Category Ascending|15|Status code: 200, returns info in ascending order|
|GET Products from Specific Category Descending|16|Status code: 200, returns info in descending order|
|GET Products from Specific Category Limiting Results Ascending|17|Status code: 200, returns info in ascending order limited by number in request|
|GET Products from Specific Category Limiting Results Descending|18|Status code: 200, returns info in descending order limited by number in request|
|GET Products from Specific Category Limiting Results with Negative Number Ascending|19|Status code: 200, returns info in ascending order limited by total minus the number in request|
|GET Products from Specific Category Limiting Results with Negative Number Descending|20|Status code: 200, returns info in descending order limited by total minus the number in request|
|GET Products from Specific Category Limiting Results with String Ascending|21|Status code: 200, returns all the products in the specific category ascending|
|GET Products from Specific Category Limiting Results with String Descending|22|Status code: 200, returns all the products in the specific category descending|
|GET Products from Category Sorting Results with Invalid Word|23|Status code: 200, returns all the products in the category by ascending order|
|GET Products from Category Sorting Results with Number|24|Status code: 200, returns all the products in the category by ascending order|

### POST Method
| TEST CASE | TAG | RESPONSE |
|---|---|---|
|POST Valid Product |25|Status code: 200, returns the created product data|
|POST Product with Existing Title |26|Status code: 200, returns the created product data|
|POST Product with Blank Title|27|Status code: 200, returns the created product data|
|POST Product with Numeric Title Type|28|Status code: 200, returns the created product data|
|POST Product with Blank Price|29|Status code: 200, returns the created product data|
|POST Product with Negative Price|30|Status code: 200, returns the created product data|
|POST Product with String Price|31|Status code: 200, returns the created product data|
|POST Product with Blank Description|32|Status code: 200, returns the created product data|
|POST Product with Numeric Description|33|Status code: 200, returns the created product data|
|POST Product with Blank Image Space|34|Status code: 200, returns the created product data|
|POST Product with Blank Category Space|35|Status code: 200, returns the created product data|
|POST Product without Title Key|36|Status code: 200, returns the created product data|
|POST Product without Price Key|37|Status code: 200, returns the created product data|
|POST Product without Description Key|38|Status code: 200, returns the created product data|
|POST Product without Image Key|39|Status code: 200, returns the created product data|
|POST Product without Category Key|40|Status code: 200, returns the created product data|

### PUT Method
| TEST CASE | TAG | RESPONSE |
|---|---|---|
|PUT Update All Product Info|41|Status code: 200, returns the updated product data|
|PUT Update Product with Blank Title|42|Status code: 200, returns the updated product data with blank key|

## :shopping_cart: /carts Results
---

## :adult: /users Results
---

## :closed_lock_with_key: /auth/login Results
---

## :woman_technologist: Reach out!
---
Emily Suzan Lanzarin

[![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/emily-lanzarin-a198bb1bb/)