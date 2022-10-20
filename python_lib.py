from tkinter import W
import requests as req
from faker import Faker
import json
import random


def Get_Static_Login_Data(user):
    with open("./support/fixtures/static/login_info.json", encoding="utf-8") as json_normal:
        usableJson = json.load(json_normal)
    #print(usableJson[especifico])
    return usableJson[user]

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

def Post_Invalid_Product(key, value):
    if key == ""


#Limit_Get_In_Category()
#Get_Product_By_Category()
#Get_Beyond_Limit("products")
#Get_Limit("products/category/electronics")
#Get_Product_By_Id()