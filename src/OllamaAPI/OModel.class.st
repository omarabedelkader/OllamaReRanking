Class {
	#name : 'OModel',
	#superclass : 'Object',
	#instVars : [
		'tag'
	],
	#category : 'OllamaAPI',
	#package : 'OllamaAPI'
}

{ #category : 'accessing' }
OModel >> fullName [

	^ String streamContents: [ :stream |
		stream << self name.
		self tag ifNotNil: [ :t |
			stream << ':'.
			stream << t ] ]
]

{ #category : 'accessing' }
OModel >> tag [
	^ tag
]

{ #category : 'accessing' }
OModel >> tag: anObject [

	tag := anObject
]
