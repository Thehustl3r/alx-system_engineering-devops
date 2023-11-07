#!/usr/bin/python3
"""1-top_ten"""
import requests


def top_ten(subreddit):
    """Function that get the top ten popular posts"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    headers = {'User-Agent': 'Prosper/1.0'}

    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        try:

            data = response.json()
            posts = data['data']['children']

            if posts is not None:
                for post in posts:
                    title = post['data']['title']
                    print(title)
        except (KeyError, ValueError):
            print(None)

    else:
        print(None)
