Class {
	#name : 'ToploAppExampleCommandLineHandler',
	#superclass : 'CommandLineHandler',
	#category : 'ToploAppExample',
	#package : 'ToploAppExample'
}

{ #category : 'accessing' }
ToploAppExampleCommandLineHandler class >> commandName [

	^ 'toploExample'
]

{ #category : 'activation' }
ToploAppExampleCommandLineHandler >> activate [
	
	| space |
	OSWindowDriver current startUp: true.
	AppGeneratorSupport errorHandler: AppGeneratorSDLMessageErrorHandler new.

	space := ToploDemoPresenter demo1 openInSpace.
	space
				addEventHandlerOn: BlSpaceClosedEvent
				do: [ :e | Smalltalk snapshot: false andQuit: true ].
]
