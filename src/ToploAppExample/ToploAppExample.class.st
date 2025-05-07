Class {
	#name : 'ToploAppExample',
	#superclass : 'Object',
	#category : 'ToploAppExample',
	#package : 'ToploAppExample'
}

{ #category : 'as yet unclassified' }
ToploAppExample >> generateOSXPackage [

	AppGeneratorOSXGenerator new
		properties: {
			#AppName -> 'ToploExample'.
			#InfoString -> 'A Simple Example for Toplo'.
			#BundleIdentifier -> 'org.pharo.toplo'.
			#ShortVersion -> '1.0.0'.
			#DisplayName -> 'Toplo Example'.
			#CommandLineHandler -> 'toploExample'.
"			#IconSetFile -> self iconSetFile."
		} asDictionary;
		outputDirectory: FileLocator workingDirectory / 'build';
		generate
]

{ #category : 'as yet unclassified' }
ToploAppExample >> generateWindowsPackage [ 

	AppGeneratorWindowsGenerator new
		properties: {
			#AppName -> 'Takuzu'.
			#InfoString -> 'A Takuzu game written in Pharo'.
			#BundleIdentifier -> 'org.pharo.takuzu'.
			#ShortVersion -> '1.0.0'.
			#DisplayName -> 'Takuzu'.
			#CommandLineHandler -> 'takuzu'.
"			#IconFile -> self iconFile."
			#CompanyName -> 'Pharo Consortium'.
			#LegalCopyright -> 'Copyright \251 https://www.pharo.org 2023\0'
		} asDictionary;
		outputDirectory: FileLocator workingDirectory / 'build';
		generate
]
