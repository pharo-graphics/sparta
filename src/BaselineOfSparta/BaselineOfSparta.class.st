"
I am a Baseline of Sparta.

"
Class {
	#name : #BaselineOfSparta,
	#superclass : #BaselineOf,
	#category : #BaselineOfSparta
}

{ #category : #baseline }
BaselineOfSparta >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'SpartaCore' with: [
				spec repository: 'github://pharo-graphics/Sparta:dev-1.0/src' ];
			baseline: 'SpartaCairo' with: [
				spec repository: 'github://pharo-graphics/Sparta:dev-1.0/src' ]

"			See: https://github.com/pharo-graphics/Bloc/issues/189

			baseline: 'SpartaSkia' with: [
				spec repository: 'github://pharo-graphics/Sparta:dev-1.0/src' ]" ]
]
