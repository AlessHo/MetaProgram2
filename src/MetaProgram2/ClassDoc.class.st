Class {
	#name : #ClassDoc,
	#superclass : #Object,
	#instVars : [
		'doc',
		'className'
	],
	#category : #MetaProgram2
}

{ #category : #accessing }
ClassDoc >> className [
	^className.
]

{ #category : #accessing }
ClassDoc >> doc [
	^doc.
]

{ #category : #accessing }
ClassDoc >> doc: aDoc [
	doc := aDoc.
]

{ #category : #accessing }
ClassDoc >> getAnyClassDetails: aClassName [
	|objClassDetails lstClassSubClass lstClassSuperClass|
	
	doc :='Voici la documentation de la classe ', aClassName name asString, ' : '.	
		
	objClassDetails := ClassDetails new.	
	lstClassSubClass := objClassDetails getAllSubclasses: aClassName.
	lstClassSuperClass := objClassDetails getAllSuperClasses: aClassName.	
	
	doc:= doc, '- Sub classes: '.		
	doc:= doc, lstClassSubClass asString .
	doc:= doc, '- Super classes: '.		
	doc:= doc, lstClassSuperClass asString .
	
	^doc.	
]
