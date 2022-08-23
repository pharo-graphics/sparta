Class {
	#name : #SpartaCairoFFIDoubleArray,
	#superclass : #FFIExternalArray,
	#category : #'Sparta-Cairo'
}

{ #category : #'instance creation' }
SpartaCairoFFIDoubleArray class >> new [
	^ self shouldNotImplement
]

{ #category : #'instance creation' }
SpartaCairoFFIDoubleArray class >> new: size [ 
	^ self newType: FFIFloat64 size: size
]

{ #category : #'instance creation' }
SpartaCairoFFIDoubleArray class >> newUnary [
	^ self new: 1
]
