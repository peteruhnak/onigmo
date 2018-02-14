baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec package: 'Onigmo' with: [ spec postLoadDoIt: #loadOnigmoLibrary ].
			spec group: 'default' with: #('Onigmo') ]