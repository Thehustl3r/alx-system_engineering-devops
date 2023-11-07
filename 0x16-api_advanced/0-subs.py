#!/usr/bin/python3
""""This module is used to request the from reddit api"""
import requests


def number_of_subscribers(subreddit):
    """"the function that return number of sub reddit"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': 'Prosper/1.0'}

    response =  requests.get(url, headers=headers)

    if response.status_code == 200:
        try:

            data = response.json()
            subscribers = len(data)
            return (subscribers)
        except (KeyError, ValueError):
            return (0)

    else:
        return (0)
