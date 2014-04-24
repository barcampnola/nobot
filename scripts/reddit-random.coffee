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

  robot.respond /reddit random( (\w+))?/i, (msg) ->
    sub = if msg.match[2] then msg.match[2].trim() else "random"
    get_random_url(msg, "http://api.reddit.com/r/#{sub}/random")

  get_random_url = (msg, url) ->
    robot
      .http(url)
      .get() (err, res, body) ->
        if res.statusCode is 302
          get_random_url msg, res.headers.location
        else
          msg.send "http://reddit.com#{JSON.parse(body)[0].data.children[0].data.permalink}"