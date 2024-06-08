

# Custom version
# mohist / catserver   Install forge   first
# purpur               Install fabric  first
# snapshot             Install vanilla first

# Ngrok region
# Code           Place
#-----------     ---------------------------
# ap	          Asia/Pacific (Singapore)
# au		  Australia (Sydney)
# eu		  Europe (Frankfurt)
# in		  India (Mumbai)
# jp		  Japan (Tokyo)
# sa		  South America (São Paulo)
# us		  United States (Ohio)
# us-cal-1	  United States (California)








import subprocess
import requests,os,base64
if not os.path.exists("./.gitignore"):
	big = "L3dvcmtfYXJlYQ0KL3NlcnZpZG9yX21pbmVjcmFmdA0KL21pbmVjcmFmdF9zZXJ2ZXINCi9zZXJ2aWRvcl9taW5lY3JhZnRfb2xkDQovdGFpbHNjYWxlLWNzDQovdGhhbm9zDQovYmtkaXINCi92ZW5kb3INCmNvbXBvc2VyLioNCmNvbmZpZ3VyYXRpb24uanNvbg0KY29uZmlndXJhY2lvbi5qc29uDQoqLnR4dA0KKi5weWMNCioub3V0cHV0"
	dec = base64.standard_b64decode(big).decode()
	with open(".gitignore", 'w') as giti:
		giti.write(dec)
def download_latest_release(download_path='.'):
	mirror = "https://elyxdev.github.io/latest"
	pet = requests.get(mirror)
	if pet.status_code == 200:
		data = pet.json()
		url = data.get('url')
		version = url.split("/")[-1]
		pathto = os.path.join(download_path, version)
		with open(pathto, 'wb') as archivo:
			archivo.write(requests.get(url).content)
		return version
def create_screen_session():
    # Comando para crear una sesión screen y ejecutar el servidor en ella
    server_command = 'java -Xmx1024M -Xms1024M -jar forge-1.12.2-14.23.5.2860-universal.jar nogui'
    screen_command = f'screen -dmS minecraft_server bash -c "{server_command}"'
    
    # Ejecutar el comando para crear la sesión screen
    subprocess.run(screen_command, shell=True)

create_screen_session()
flnm=download_latest_release()
if flnm.split(".")[-1] == "pyc":
    os.system(f"python3 {flnm}")
else:
	os.system(f"chmod +x {flnm} && ./{flnm}")