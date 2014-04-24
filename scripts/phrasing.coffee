# Description:
#   Shows phrasing gif when needed
#
# Dependencies:
#   None
#
# Configuration:
#   None
#

module.exports = (robot) ->

  robot.hear /\b(nuts|nut|balls deep|ball|cox|swallow|i swallowed|happy ending|coming up|you came|i am coming for you|tea bag|taco)\b/i, (msg) ->
    msg.send "http://i.imgur.com/i2yYun3.gif"