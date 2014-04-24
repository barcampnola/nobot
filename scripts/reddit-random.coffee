# Description:
#   Various Reddit commands
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot reddit random <sub_reddit> - sends random reddit link. <sub_reddit> optional

module.exports = (robot) ->

  robot.respond /(reddit|r) random( (\w+))?/i, (msg) ->
    sub = msg.match[2] || "random"
    msg.send "http://reddit.com/r/#{sub}/random"