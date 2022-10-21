from pydoc import describe
import requests as req
from faker import Faker
import json
import random


def Get_Static_Login_Data(user):
    with open("./support/fixtures/static/login_info.json", encoding="utf-8") as json_normal:
        usableJson = json.load(json_normal)
    #print(usableJson[especifico])
    return usableJson[user]

def Get_Static_Product_Data(type):
    with open("./support/fixtures/static/products_info.json", encoding="utf-8") as json_normal:
        usableJson = json.load(json_normal)
    #print(usableJson[especifico])
    return usableJson[type]

def Get_Product_By_Id():
    #returns only the last product for validation purposes
    r = req.get('https://fakestoreapi.com/products')
    request_json = r.json()
    for i in range((len(request_json)+1)):
        r_id = req.get(F"https://fakestoreapi.com/products/{i}")
        print(r_id.text)
        print(r_id.status_code)
    
    return r_id

def Get_Limit(endpoint):
    r =req.get(f"https://fakestoreapi.com/{endpoint}")
    request_json = r.json()
    limit_number = random.randint(1, len(request_json))
    print(limit_number)
    return limit_number

def Get_Beyond_Limit(endpoint):
    r= req.get(f"https://fakestoreapi.com/{endpoint}")
    request_json = r.json()
    number = (len(request_json) + 5)
    print(number)
    return number

def Get_Product_By_Category():
    r=req.get(f"https://fakestoreapi.com/products/categories")
    request_json = r.json()
    print(request_json)
    random.shuffle(request_json)
    print(request_json)
    for category in request_json:
        r_category = req.get(f"https://fakestoreapi.com/products/category/{category}")
        #print(r_category.json())
    return r_category 

def Get_Limit_In_Category():
    r_category = Get_Product_By_Category()
    number = Get_Limit(F"products/category/{r_category.json()[0]['category']}")
    print(r_category.json()[1]['category'])
    #print(number)
    return number

def Create_Invalid_Post_Data(endpoint, key):
    invalid_dict = {}

    if endpoint == "products":
        invalid_dict["title"] = "test product"
        invalid_dict["price"] = 1000
        invalid_dict["description"] = "fake product description"
        invalid_dict["image"] = "anyimage.jpg"
        invalid_dict["category"] = "fake product category"

    if endpoint == "user":
        invalid_dict={
            "email": "anyemail@gmail.com",
            "username":"Anyuser",
            "password":"aaaaa123",
            "name":{
                "firstname":"Any",
                "lastname":"User"
                },
            "address":{
                "city":"kilcoole",
                "street":"7835 new road",
                "number":3,
                "zipcode":"12926-3874",
                "geolocation":{
                        "lat":"-37.3159",
                        "long":"81.1496"
                        }
                },
            "phone":'1-570-236-7033'
        }

        '''
        invalid_dict["email"] = "anyemail@gmail.com"
        invalid_dict["username"] = "anyuser"
        invalid_dict["password"] = "anypassword123"
        invalid_dict["name"]["firstname"] = "Any"
        invalid_dict["name"]["lastname"] = "User"
        invalid_dict["address"]["city"] = "anycity"
        invalid_dict["address"]["street"] = "anystreet"
        invalid_dict["address"]["number"]= 5555
        invalid_dict["address"]["zip_code"] = 12345-7890
        invalid_dict["address"]["geolocation"]["lat"] = -54.665
        invalid_dict["address"]["geolocation"]["lon"] = 30.3330
        invalid_dict["phone"] = 33335-880
        '''

    print(invalid_dict)

    invalid_dict.pop(key)

    return invalid_dict

aaaa = Create_Invalid_Post_Data("user", "email")
print(aaaa)


"""
def Post_Invalid_Product(key, value):
    if key == ""
"""

#Limit_Get_In_Category()
#Get_Product_By_Category()
#Get_Beyond_Limit("products")
#Get_Limit("products/category/electronics")
#Get_Product_By_Id()