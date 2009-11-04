accessing
methodSources
	^ (cls methods collect: #getSource) collect: #string