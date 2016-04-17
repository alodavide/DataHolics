# These values get propagated through the app
# E.g. The 'name' and 'subtitle' are used in seo.coffee

@Config =

	# Basic Details
	name: 'Survey Central'
	title: ->
			TAPi18n.__ 'configTitle'
	subtitle: ->
			TAPi18n.__ 'configSubtitle'
	logo: ->
		'<b>' + @name + '</b>'
	footer: ->
		@name + ' - Copyright ' + new Date().getFullYear()

	# Emails
	emails:
		from: 'no-reply@' + Meteor.absoluteUrl()
		contact: 'hello' + Meteor.absoluteUrl()

	# Username - if true, users are forced to set a username
	username: false
	
	# Localisation
	defaultLanguage: 'en'
	dateFormat: 'D/M/YYYY'

	# Meta / Extenrnal content
	privacyUrl: 'https://github.com/alodavide/DataHolics'
	termsUrl: 'https://github.com/alodavide/DataHolics'

	# For email footers
	legal:
		address: 'Campus Biotech'
		name: 'DataHolics'
		url: 'https://github.com/alodavide/DataHolics'

	about: 'https://github.com/alodavide/DataHolics'
	blog: 'https://github.com/alodavide/DataHolics'

	socialMedia:
		github:
			url: 'https://github.com/alodavide/DataHolics'
			icon: 'github'
		info:
			url: 'https://github.com/alodavide/DataHolics'
			icon: 'link'

	#Routes
	homeRoute: '/'
	publicRoutes: ['home']
	dashboardRoute: '/dashboard'