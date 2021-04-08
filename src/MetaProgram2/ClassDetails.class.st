Class {
	#name : #ClassDetails,
	#superclass : #Object,
	#category : #MetaProgram2
}

{ #category : #accessing }
ClassDetails >> getAllInstVarNames: aClassName [
	^aClassName allInstVarNames.
]

{ #category : #accessing }
ClassDetails >> getAllSelectors: aClassName [
	^aClassName allSelectors.
]

{ #category : #accessing }
ClassDetails >> getAllSubclasses: aClassName [
	^aClassName allSubclasses.
]

{ #category : #accessing }
ClassDetails >> getAllSuperClasses: aClassName [
	^aClassName allSuperclasses.
]

{ #category : #accessing }
ClassDetails >> getInstVarNames: aClassName [
	^aClassName instVarNames.
]

{ #category : #accessing }
ClassDetails >> getSelectors: aClassName [
	^aClassName selectors.
]

{ #category : #accessing }
ClassDetails >> getSubclasses: aClassName [
	^aClassName subclasses.
]
