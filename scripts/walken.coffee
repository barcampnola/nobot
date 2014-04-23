# Description:
#   This! http://media.giphy.com/media/b7RfYOYOD23QY/giphy.gif
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   walken - Bring forth Christopher Walken 
#
# Author:
#   Tritico

walkens = [
	"http://media.giphy.com/media/b7RfYOYOD23QY/giphy.gif"
	"http://media.giphy.com/media/znUeZ8YoAyuT6/giphy.gif"
	"http://media.giphy.com/media/9JHIr6cUSkubu/giphy.gif"
	"http://media.giphy.com/media/Yp1jHh7Lhg5gs/giphy.gif"
	"http://media.giphy.com/media/ix59wk53XWPmw/giphy.gif"
	"http://media.giphy.com/media/Q7ki5UbUvHt96/giphy.gif"
	"http://media.giphy.com/media/b7RfYOYOD23QY/giphy.gif"
	"http://media.giphy.com/media/zp50vdv3TdZFS/giphy.gif"
	"http://media.giphy.com/media/S3u5avXTl0rRe/giphy.gif"
	"http://media.giphy.com/media/w360Zy8rrNVXa/giphy.gif"
	"http://media.giphy.com/media/wVkOGFxGKOyUo/giphy.gif"
	"http://media.giphy.com/media/njEi5Suk7RXCo/giphy.gif"
	"http://media.giphy.com/media/rCcSpjM8linCM/giphy.gif"
	"http://media.giphy.com/media/pQS2IH2yqNiww/giphy.gif"
	"http://media.giphy.com/media/rCcSpjM8linCM/giphy.gif"
	"http://media.giphy.com/media/b7RfYOYOD23QY/giphy.gif"
	"http://media.giphy.com/media/UGABC700suPZu/giphy.gif"
	"http://media.giphy.com/media/NkVD6NiMT5HW/giphy.gif"
	"http://media.giphy.com/media/12XOSNMpTRzULC/giphy.gif"
	"http://media.giphy.com/media/ztvL9PBmmTtwA/giphy.gif"
	"http://media.giphy.com/media/JFSx12R3zljdC/giphy.gif"
	"http://media.giphy.com/media/BjTCuAeS4svqo/giphy.gif"
	"http://media.giphy.com/media/b7RfYOYOD23QY/giphy.gif"
	"http://media.giphy.com/media/TpKrnMyfQtPSE/giphy.gif"
	"http://media.giphy.com/media/aTo55S4XaZ8PK/giphy.gif"
	"http://media.giphy.com/media/11nFufzCLeIJvG/giphy.gif"
	"http://bavatuesdays.com/files/2012/12/dz_walken_headband_opt2.gif"
]

module.exports = (robot) ->
  robot.hear /\b(walken)\b/i, (msg) ->
    msg.send msg.random walkens

