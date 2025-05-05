import requests

from pprint import pprint

api_key='1bdf43fa5eec61f66c1e62ddda9e692d'
city=input("Enter your city: ")

weather_data=requests.get("https://api.openweathermap.org/data/2.5/weather?appid="+api_key+"&q="+city).json()
pprint(weather_data)
