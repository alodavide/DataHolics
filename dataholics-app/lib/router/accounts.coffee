Router.map ->
  @route "profile",
    path: "/profile"
      
  @route "account",
    path: "/account"

  @route "questions",
    path: "/questions"
    data: ->
      questions: Questions.find({},{sort: {createdAt: -1}}).fetch()

  @route "setUserName",
    path: "/setUserName"
    onBeforeAction: ->
      if not Config.username or (Meteor.userId() and Meteor.user().username)
        @redirect '/dashboard'
      @next()

  @route 'signOut',
    path: '/sign-out'
    onBeforeAction: ->
      Meteor.logout ->
      @redirect '/'
      @next()
