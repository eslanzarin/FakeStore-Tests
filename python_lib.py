from tkinter import W
import requests as req
from faker import Faker
import json


def Get_Static_Login_Data(user):
    with open("./support/fixtures/static/login_info.json", encoding="utf-8") as json_normal:
        usableJson = json.load(json_normal)
    #print(usableJson[especifico])
    return usableJson[user]
