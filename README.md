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

* [/products results]()
* [/carts results]()
* [/users results]()
* [/auth/login results]()

## :mega: Some important considerations: 
---
* The API is made to not have its data changed in any HTML method used. So, all the changes made will have a result, but when tried to be accessed through its Id, it will return an error message. Some examples:
    * When creating a new product using POST (or any other possible method), the API will return a code 200 (OK) and the created product, but when trying to access through the Id, nothing is found;
    * Same goes for a new users added to the API through any methos. Also, its data can't be used for login purposes, which can only be done using data from users that are in the API already;
    * About login: when successful, will return a bearer token, which isn't asked in any other endpoint or request throughout the application;
    * Also, most of the times, when adding data with incorrect parameters, it returns a succesful response which can be checked in the results below. Same goes when passing dictionary data as payload with keys missing;
    * None of the points above are meant to criticize the creator(s) in any way, these are only considerations I've came through while studying the API and some are reasonable when thinking about the reason to be created (mainly to be used with GET method to help developers with their own applications).

## :shopping: /products Results
---

## :shopping_cart: /carts Results
---

## :adult: /users Results
---

## :closed_lock_with_key: /auth/login Results
---