zoo = {
	mammals: ['monkey', 'bear', 'fox', 'tiger', 'goat'],
	birds: ['parrot', 'penguin', 'owl', 'flamingo'],
	reptiles: ['snake', 'lizard', 'crocodile'],
	fish: ['guppy', 'goldfish', 'shark']
}

#find a flamingo
zoo[:birds][3]

#call a crocodile
zoo[:reptiles][2]

#how many fish are in the tank?
zoo[:fish].length

#add a gorilla to mammals
zoo[:mammals].push('gorilla')

#check to see the gorilla didn't eat any birds
p zoo[:birds]

#delete the guppy because the shark ate it
zoo[:fish].delete('guppy')

#crocodile was mislabeled- replace with alligator!
zoo[:reptiles][2] = 'alligator'


