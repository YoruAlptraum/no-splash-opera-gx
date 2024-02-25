import os
import re

# import base64

# def encode(data):
#     try:
#         # Standard Base64 Encoding
#         encodedBytes = base64.b64encode(data.encode("utf-8"))
#         return str(encodedBytes, "utf-8")
#     except:
#         return ""
    
# def decode(data):
#     try:
#         message_bytes = base64.b64decode(data)
#         return message_bytes.decode('utf-8')
#     except:
#         return ""

# your_code = encode("""


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

# """)

# exec(decode(your_code))