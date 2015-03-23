# Home
FlowRouter.route '/',
  action: (params) ->
    FlowLayout.render('HomeLayout', { main:'Index'})

FlowRouter.route '/start',
  action: (params) ->
    FlowLayout.render('MasterLayout', { main:'Start'})

if Meteor.isClient
  Tracker.autorun () ->
    userId = Meteor.userId()
    if userId
      FlowRouter.go('/start')
    else
      FlowRouter.go('/')