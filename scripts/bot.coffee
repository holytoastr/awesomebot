module.exports = (robot) ->
  praises = [
    "You're pretty awesome!",
    "Good job!",
    "I'm so proud of you!",
    "You're the best!",
    "You're awesome!"
    "You're such a hard worker!",
    "You're a virtuoso!",
    "Your genius would be alarming, if it wasn’t so consistent.",
    "You’re a smooooth criminal.",
    "I like the cut of your jib.",
    "You are an awe-inspiring individual.",
    "You turn an ordinary day into an incredible one.",
    "You're just the bees' knees!",
    "You rock!"
  ]

  robot.respond /praise me/i, (res) ->
    res.reply res.random praises

  robot.respond /praise @?([\w .\-]+)\?*$/i, (res) ->
    name = res.match[1].trim()
    res.send "@#{name}: " + res.random praises
