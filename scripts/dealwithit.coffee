# Description:
#   Deal with it
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   deal with it - Display a gif of random deal with it
#
# Author:
#   jteachworth

dealwithit = [
  "http://cdn.head-fi.org/d/db/db6b4cf9_deal_with_it_long_dog_gif.gif",
  "http://i.imgur.com/SHz81.gif",
  "http://i.imgur.com/xe2OsXx.gif",
  "http://i.imgur.com/bY5XsDW.gif",
  "http://i.imgur.com/dz3vf6S.gif",
  "http://i.imgur.com/9yeHXKJ.gif",
  "http://i.imgur.com/DqgYc.gif",
  "http://i.imgur.com/6DdDc.gif",
  "http://i.imgur.com/uNmevWn.gif",
  "http://i.imgur.com/lI7Jn.gif",
  "http://i.imgur.com/AYOKaDI.gif",
  "http://i.imgur.com/IfxrY7Z.gif",
  "http://i.imgur.com/4Ltflsx.gif",
  "http://i.imgur.com/WsHyK.gif"
]

module.exports = (robot) ->
  robot.hear /\b(deal with it)\b/i, (msg) ->
    msg.send msg.random dealwithit
