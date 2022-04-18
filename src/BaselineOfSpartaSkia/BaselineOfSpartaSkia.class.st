Class {
	#name : #BaselineOfSpartaSkia,
	#superclass : #BaselineOf,
	#classVars : [
		'PostLoaded'
	],
	#category : #BaselineOfSpartaSkia
}

{ #category : #baseline }
BaselineOfSpartaSkia >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #postLoadSkia:.
			spec
				baseline: 'SpartaCore'
					with: [ spec repository: 'github://pharo-graphics/Sparta:dev-1.0/src' ];
				baseline: 'GToolkitInstaller'
					with: [ spec repository: 'github://feenkcom/gtoolkit-installer:main/src' ];
				baseline: 'GToolkitBoxer'
					with: [ spec repository: 'github://feenkcom/gtoolkit-boxer:main/boxer-bindings' ].
			spec
				package: 'Sparta-Skia'
				with: [ spec requires: #('SpartaCore' 'GToolkitInstaller' 'GToolkitBoxer') ] ]
]

{ #category : #baseline }
BaselineOfSpartaSkia >> postLoadSkia: aSpecLoader [
	"prevent from installing multiple times by metacello"	
	(PostLoaded isNotNil and: [ PostLoaded ])
		ifTrue: [ ^ self ].

	PostLoaded := true.
	(self class environment at: #SkiaLibrary) install
]
