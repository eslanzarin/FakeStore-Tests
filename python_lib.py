from tkinter import W
import requests as req
from faker import Faker
import json


def Get_Static_Login_Data(user):
    with open("./support/fixtures/static/login_info.json", encoding="utf-8") as json_normal:
        usableJson = json.load(json_normal)
    #print(usableJson[especifico])
    return usableJson[user]

def Get_Product_By_Id():
    #returns only the last product
    r = req.get('https://fakestoreapi.com/products')
    request_json = r.json()
    for i in range((len(request_json)+1)):
        r_id = req.get(F"https://fakestoreapi.com/products/{i}")
        print(r_id.text)
        print(r_id.status_code)
    
    return r_id

Get_Product_By_Id()