post-load
loadOnigmoLibrary
	self onigmoLibraryPath exists
		ifTrue: [ ^ self ].
	UIManager default
		informUserDuring: [ :job | 
			job title: 'Downloading ' , self onigmoLibraryName , '...'.
			[ ZnClient new
				signalProgress: true;
				url: self onigmoLibraryUrl;
				downloadTo: self onigmoLibraryPath ]
				on: HTTPProgress
				do: [ :progress | 
					progress isEmpty
						ifFalse: [ job current: progress percentage ].
					progress resume ] ]