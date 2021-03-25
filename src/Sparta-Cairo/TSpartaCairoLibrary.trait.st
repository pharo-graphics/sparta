Trait {
	#name : #TSpartaCairoLibrary,
	#category : 'Sparta-Cairo-Library'
}

{ #category : #'library path' }
TSpartaCairoLibrary classSide >> ffiLibraryName [
	^ CairoLibrary
]

{ #category : #'library path' }
TSpartaCairoLibrary >> ffiLibraryName [
	^ self class ffiLibraryName
]
