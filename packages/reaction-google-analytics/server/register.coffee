console.log("asdf")
Meteor.startup ->
  console.log "Adding Google Analytics to modules"
  result = ReactionPackages.upsert(
    name: "reaction-google-analytics",
    $set:
      label: "Google Analytics"
      description: ""
      icon: "fa fa-eye fa-5x"
      route: "googleAnalytics"
      template: "googleAnalytics"
      priority: "4"
  )
  if result.insertedId
    ReactionPackages.update result.insertedId,
      $set:
        metafields:
          type: ""
