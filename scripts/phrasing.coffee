# Description:
#   Shows phrasing gif when needed
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot phrasing - shows all the phrases that make the gif appear

module.exports = (robot) ->
  phrases = [
    "happy ending",
    "you have arrived",
    "you came",
    "i am coming for you",
    "i ate it",
    "i would eat that",
    "this is going to suck",
    "i want it",
    "that thing is huge",
    "pull out",
    "suck it up",
    "it won't fit",
    "i don't see it",
    "is it in yet",
    "robert downey jr",
    "low hanging fruit",
    "i have arrived",
    "nuts",
    "balls",
    "still at it",
    "too fast",
    "microsoft"
  ]

  regex = RegExp("\\b(#{phrases.join("|")})\\b", "i")

  robot.hear regex, (msg) ->
    msg.send "http://i.imgur.com/i2yYun3.gif"

  robot.respond /phrasing/i, (msg) ->
    msg.send phrases.join(",\n")