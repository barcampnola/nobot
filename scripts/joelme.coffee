# Description:
#   Joelme is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot joel me - Receive a joel
#   hubot joel bomb N - get N joels

module.exports = (robot) ->

  robot.respond /joel me/i, (msg) ->
    msg.http("http://joelme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).joel

  robot.respond /joel bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("http://joelme.herokuapp.com/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send joel for joel in JSON.parse(body).joels

  robot.respond /joel( (\w+))?/i, (msg) ->
    tag = msg.match[2]
    msg.http("http://joelme.herokuapp.com/" + tag)
      .get() (err, res, body) =>
        if res.statusCode == 404
          msg.send "There are no #{tag} joels."
        else
          msg.send JSON.parse(body).joel

  robot.respond /how many joels are there/i, (msg) ->
    msg.http("http://joelme.herokuapp.com/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).joel_count} joels."
