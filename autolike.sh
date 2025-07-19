# Auto Like Script | Made by Mahim

import requests
import os

# Banner
def show_banner():
    os.system("clear")
    print("\033[1;31m")  # Red color
    os.system("figlet AUTO TERMUX")
    print("\033[0m")  # Reset color
    print("===================================")
    print("         Created by: Mahim")
    print("         Tool Name : Auto Like")
    print("===================================\n")

# Like Function
def like_post(post_id, token):
    url = f"https://graph.facebook.com/{post_id}/likes"
    payload = {'access_token': token}
    response = requests.post(url, data=payload)

    if response.status_code == 200:
        print("✅ Post liked successfully!")
    else:
        print(f"❌ Error: {response.text}")

# Run Banner
show_banner()

# Input
access_token = input("🔑 Enter your Facebook Access Token: ")
post_id = input("🆔 Enter the Facebook Post ID: ")

# Action
like_post(post_id, access_token)
