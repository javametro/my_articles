import codecs
from math import sqrt

users = {
	"Angelica" : {
		"Blues Traveler" : 3.5, 
		"Broken Bells" : 2.0,
		"Norah Jones" : 4.5,
		"Phoenix" : 5.0,
		"Slighty Stoopid" : 1.5,
		"The Strokes" : 2.5,
		"Vampire Weekend" : 2.0
	},

	"Bill" : {
		"Blues Traveler" : 2.0,
		"Broken Bells" : 3.5,
		"Deadmau5" : 4.0,
		"Phoenix" : 2.0,
		"Slighty Stoopid" : 3.5,
		"Vampire Weekend" : 3.0
	},

	"Chan" : {
		"Blues Traveler" : 5.0,
		"Broken Bells" : 1.0,
		"Deadmau5" : 1.0,
		"Norah Jones" : 3.0,
		"Phoenix" : 2.0,
		"Slighty Stoopid" : 1.0
	},

	"Hailey" : {
		"Broken Bells" : 4.0,
		"Deadmau5" : 1.0,
		"Norah Jones" : 4.0,
		"The Strokes" : 4.0,
		"Vampire Weekend" : 2.0
	},

	"Jordyn" : {
		"Broken Bells" : 4.5,
		"Deadmau5" : 4.0,
		"Norah Jones" : 5.0,
		"Phoenix" : 5.0,
		"Slighty Stoopid" : 4.5,
		"The Strokes" : 4.0,
		"Vampire Weekend" : 4.0
	},

	"Sam" : {
		"Blues Traveler" : 5.0,
		"Broken Bells" : 2.0,
		"Norah Jones" : 3.0,
		"Phoenix" : 5.0,	
		"Slighty Stoopid" : 4.0,
		"The Strokes" : 5.0
	},

	"Veronica" : {
		"Blues Traveler" : 3.0,
		"Norah Jones" : 5.0,
		"Phoenix" : 4.0,
		"Slighty Stoopid" : 2.5,
		"The Strokes" : 3.0
	}
}

class recommender:
	def __init__(self, data, k=1, metric='pearson', n=5):
		""" initition module
			data : training data
			k : k nearest value
			metric: calculate method
			n : recommend nums
		"""

		self.k = k
		self.n = n
		self.username2id = {}
		self.userid2name = {}
		self.productid2name = {}
		self.metric = metric
		
		if self.metric == 'pearson':
			self.fn = self.pearson

		if type(data).__name__ == "dict":
			self.data = data


	def convertProductID2name(self, id):
		if id in self.productid2name:
			return self.productid2name[id]
		else:	
			return id


	def userRatings(self, id, n):
		print ("Ratings for " + self.userid2name[id])
		ratings = self.data[id]
		print(len(ratings))
		ratings = list(ratings.items())
		ratings = [(self.convertProductID2name(k), v) for (k, v) in ratings]
		ratings.sort(key=lambda artistTuple: artistTuple[1], reverse=True)
		ratings = ratings[:n]
		for rating in ratings:
			print("%s\t%i" % (rating[0], rating[1]))


	def loadBookDB(self, path=''):
		self.data = {}
		i = 0
		f = codecs.open(path + "BX-Book-Ratings.csv", "r", 'utf8')
