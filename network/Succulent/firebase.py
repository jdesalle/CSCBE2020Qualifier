#!/usr/bin/python3.7

import firebase_admin
from firebase_admin import credentials
from firebase_admin import db

cred = credentials.Certificate('./credentials.json')
default_app = firebase_admin.initialize_app(cred, {
    'databaseURL' : 'https://succulent-enthusiasts-anon.firebaseio.com'
    })

root = db.reference()
print(root.get())

#db = firestore.client()
