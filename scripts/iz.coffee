# Description:
#   DIY iSeatz Branding
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot iseatz
#

module.exports = (robot) ->
  robot.respond /i([a-z]+)z/i, (msg) ->
    match = msg.match[1]
    msg.send "http://izify.herokuapp.com/" + match.toLowerCase() + ".png"
