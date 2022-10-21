# Automated tests for FakeStoreAPI using Robot :robot:

**FakeStoreAPI** is a simple API to be used to get pseudo-real data for online stores and can be used in many other purposes, including testing. Click [here](https://fakestoreapi.com/) to get to the oficial API website and its [Github repository](https://github.com/keikaavousi/fake-store-api)

This repository uses `Robot Framework`, a Python Framework, for automation, due to its advantages regarding its simple sintax and multi-functionality. Some keywords were created in Python and implemented in the tests, imported as a library. 

## About the API
There are 4 endpoints, most used in e-commerce stores:

* [/products](https://fakestoreapi.com/products)
* [/cart](https://fakestoreapi.com/carts)
* [/users](https://fakestoreapi.com/users)
* [/auth/login](https://fakestoreapi.com/auth/login)

Until now, this repository only covers test cases for the Login and Products endpoints. Tests results are at the bottom of the page. 


