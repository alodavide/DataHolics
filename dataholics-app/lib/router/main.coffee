Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()

  @route "questions",
    path: "/questions"
    waitOn: ->
      subs.subscribe 'questions'
    data: ->
      questions: Questions.find({},{sort: {createdAt: -1}}).fetch()
