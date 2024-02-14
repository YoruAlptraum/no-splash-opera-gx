import os
import re

# regex to filter release folder
# [0-9]*[.][0-9]*[.][0-9]*[.][0-9]*

# opera folder \AppData\Local\Programs\Opera GX
# splash opera_gx_splash.exe

user_profile = os.environ['USERPROFILE']

# Construct the path to AppData\Local folder
directory = os.path.join(user_profile, 'AppData', 'Local', 'Programs', 'Opera GX')

# Get all files in the directory
files = os.listdir(directory)

pattern = r'[0-9]*[.][0-9]*[.][0-9]*[.][0-9]*'

releases = [file for file in files if re.match(pattern, file)]

latest_path = os.path.join(directory, sorted(releases)[-1], "opera_gx_splash.exe")

if os.path.exists(latest_path):
    os.remove(latest_path)
