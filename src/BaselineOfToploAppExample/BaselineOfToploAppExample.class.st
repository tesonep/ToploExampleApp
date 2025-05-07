Class {
	#name : 'BaselineOfToploAppExample',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfToploAppExample',
	#package : 'BaselineOfToploAppExample'
}

{ #category : 'baselines' }
BaselineOfToploAppExample >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
			
		spec baseline: 'Toplo' with: [
			spec repository: 'github://pharo-graphics/Toplo:v0.4.0' ].

		spec baseline: 'ApplicationGenerator' with: [
			spec repository: 'github://tesonep/PharoApplicationGenerator/src' ].
			
		spec
			package: 'ToploAppExample' with: [ spec requires: #('Toplo' 'ApplicationGenerator') ]]
]
