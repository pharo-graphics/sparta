Extension { #name : #BlElementVectorGeometry }

{ #category : #'*Sparta-Core' }
BlElementVectorGeometry >> containsPoint: aPoint in: anElement on: aSpartaCanvas [
	"Note: I am a fallback method to determine if a point lies within a geometry path
	when geometry is complex and it is mathematically difficult to compute manually"
	<return: #Boolean>
	| aPath |

	aPath := pathCache pathOnSpartaCanvas: aSpartaCanvas.
	^ aSpartaCanvas fill
		path: aPath;
		containsPoint: aPoint
]
