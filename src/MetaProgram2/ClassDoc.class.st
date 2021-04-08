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
	|objClassDetails lstClassAllSubclasses lstClassAllSuperClass lstClassAllInstVarNames lstClassAllSelectors lstClassInstVarNames lstClassSelectors 
	 lstClassSubClass |
	
	doc :='Voici la documentation de la classe ', aClassName name asString, ' : ', String cr.	
				
	objClassDetails := ClassDetails new.	

	lstClassAllSubclasses := objClassDetails getAllSubclasses: aClassName.
	lstClassAllSuperClass := objClassDetails getAllSuperClasses: aClassName.			
	lstClassAllInstVarNames := objClassDetails getAllInstVarNames: aClassName.	
	lstClassAllSelectors := objClassDetails getAllSelectors: aClassName.	
	lstClassInstVarNames := objClassDetails getAllInstVarNames: aClassName.	
	lstClassSelectors := objClassDetails getSelectors: aClassName.	
	lstClassSubClass := objClassDetails getSubclasses: aClassName.	
	
	doc:= doc, String cr,'- All sub classes: '.		
   (1 to: lstClassAllSubclasses size ) do: [:n | doc := doc, (lstClassAllSubclasses at: n) printString, ',']. 
	doc:= doc, String cr.
	
	doc:= doc, '- All super classes: '.		
	(1 to: lstClassAllSuperClass size ) do: [:n | doc := doc, (lstClassAllSuperClass at: n) printString, ',']. 
	doc:= doc, String cr.
	
	doc:= doc, '- All Inst var Names: '.		
	(1 to: lstClassAllInstVarNames size ) do: [:n | doc := doc, (lstClassAllInstVarNames at: n) printString, ',']. 
	doc:= doc, String cr.
	
	"(lstClassAllSelectors size = 0)
      ifTrue: [ doc:= doc, 'Empty' ,String cr. ]
		ifFalse: 
			[
				doc:= doc, '- All Selectors: '.		
				(1 to: lstClassAllSelectors size ) do: [:n | doc := doc, (lstClassAllSelectors at: n) printString, ',']. 
				doc:= doc, String cr.
			]." "Not working properly yet"

	doc:= doc, '- Inst var Names: '.		
	(1 to: lstClassInstVarNames size ) do: [:n | doc := doc, (lstClassInstVarNames at: n) printString, ',']. 
	doc:= doc, String cr.
	
	
	doc:= doc, '- All Inst var Names: '.		
	(1 to: lstClassAllInstVarNames size ) do: [:n | doc := doc, (lstClassAllInstVarNames at: n) printString, ',']. 
	doc:= doc, String cr.
	


	doc:= doc, '- Selectors: '.		
	(1 to: lstClassSelectors size ) do: [:n | doc := doc, (lstClassSelectors at: n) printString, ',']. 
	doc:= doc, String cr.

	doc:= doc, '- Sub Classes: '.		
	(1 to: lstClassSubClass size ) do: [:n | doc := doc, (lstClassSubClass at: n) printString, ',']. 
	doc:= doc, String cr, String cr.
	
	doc:= doc, ' ******* End *******'.		
	
	^doc.	
]
