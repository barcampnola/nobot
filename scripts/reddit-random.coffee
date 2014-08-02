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
#   hubot wasted - returns a random wasted gif from /r/wastedgifs

module.exports = (robot) ->

  robot.respond /reddit random( (\w+))?/i, (msg) ->
    sub = if msg.match[2] then msg.match[2].trim() else "random"
    get_reddit_post "http://api.reddit.com/r/#{sub}/random", (post) ->
      msg.send "http://reddit.com#{post.permalink}"

  robot.respond /wasted/i, (msg) ->
    get_reddit_post "http://api.reddit.com/r/wastedgifs/random", (post) ->
      msg.send post.url

  get_reddit_post = (url, callback) ->
    robot
      .http(url)
      .get() (err, res, body) ->
        if res.statusCode is 302
          #follow call again following the redirect
          get_reddit_post res.headers.location, callback
        else
          callback(JSON.parse(body)[0].data.children[0].data)
