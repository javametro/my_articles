import sys, shelve

def store_person(db):
	""" Query user for data and store it in the shelf object
	"""
	pid = raw_input('Enter unique ID number: ')
	person = {}
	person['name'] = raw_input('Enter name: ')
	person['age'] = raw_input('Enter age: ')
	person['phone'] = raw_input('Enter phone number: ')
	
	db[pid] = person
	


def lookup_person(db):
	"""
	Query user for ID and desired field, and fetch the corresponding data from the shelf object.
	"""
	pid = raw_input('Enter ID number: ')	
	field = raw_input('What would you like to know? (name, age, phone)')
	field = field.strip().lower()
	print field.capitalize() + ':', \
		db[pid][field]


def 
