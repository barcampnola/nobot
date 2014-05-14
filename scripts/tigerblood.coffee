# Description:
#   Tiger Blood!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   tiger blood - Display a gif of random tiger blood
#
# Author:
#   tritico

tigerblood = [
	"http://37.media.tumblr.com/tumblr_lit1wqLONm1qip4qeo1_500.gif#.png",
	"http://cbs923now.files.wordpress.com/2011/03/sheen_insane2.gif?w=195&h=146&crop=1#.png",
	"http://i2.kym-cdn.com/photos/images/newsfeed/000/105/340/anime.gif#.png",
	"https://i.chzbgr.com/maxW500/5659534848/h61087F01/#.png",
	"http://i2.kym-cdn.com/photos/images/newsfeed/000/105/340/anime.gif#.png",
	"http://37.media.tumblr.com/tumblr_lit1wqLONm1qip4qeo1_500.gif#.png",
	"http://img.photobucket.com/albums/v33/teasingfool/jazzhands.gif#.png",
	"http://media0.giphy.com/media/fVKnL9kiRfGGk/200.gif",
	"http://media.giphy.com/media/MqvjWq9IanTTG/giphy.gif",
	"http://media1.giphy.com/media/VRcgZakrc21ji/200.gif",
	"https://s3.amazonaws.com/giphymedia/media/EUXg7a1fO54n6/giphy.gif",
	"http://media.giphy.com/media/7WtLelwOyOD2o/giphy.gif",
	"http://media.giphy.com/media/MqvjWq9IanTTG/giphy.gif",
	"http://media2.giphy.com/media/Eq6u1YrPoDXCU/200.gif",
	"http://media.giphy.com/media/12d6eNxm7EyiSk/giphy.gif",
	"http://media.giphy.com/media/2K2o1S4w9JPBm/giphy.gif" 
]

module.exports = (robot) ->
  robot.hear /\b(tiger blood)\b/i, (msg) ->
    msg.send msg.random tigerblood
