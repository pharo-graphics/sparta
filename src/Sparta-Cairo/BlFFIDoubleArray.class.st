Class {
	#name : #BlFFIDoubleArray,
	#superclass : #FFIExternalArray,
	#category : #'Sparta-Cairo'
}

{ #category : #'instance creation' }
BlFFIDoubleArray class >> new [
	^ self shouldNotImplement
]

{ #category : #'instance creation' }
BlFFIDoubleArray class >> new: size [ 
	^ self newType: FFIFloat64 size: size
]

{ #category : #'instance creation' }
BlFFIDoubleArray class >> newUnary [
	^ self new: 1
]
