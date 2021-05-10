Class {
	#name : #SkiaCanvasExamples,
	#superclass : #BlExamplesTest,
	#traits : 'TSpartaExamples',
	#classTraits : 'TSpartaExamples classTrait',
	#category : #'Sparta-Skia-Examples'
}

{ #category : #'instance creation' }
SkiaCanvasExamples class >> canvas: anExtent [
	^ SkiaCanvas extent: anExtent
]
