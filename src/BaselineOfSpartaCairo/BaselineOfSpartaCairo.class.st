"
I am a Baseline of Sparta-Cairo backend

"
Class {
	#name : #BaselineOfSpartaCairo,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpartaCairo
}

{ #category : #baselines }
BaselineOfSpartaCairo >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'SpartaCore' with: [
				spec repository: 'github://pharo-graphics/Sparta:v0.9.1/src' ].
		spec package: 'Sparta-Cairo' with: [
				spec requires: #('SpartaCore' ) ] ].

]
