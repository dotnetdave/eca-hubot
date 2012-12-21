# Description:
#   Time untill next manburger
#
# Commands:
#   hubot manburger - Reply with days untill next manburger

module.exports = (robot) ->
  robot.respond /manburger$/i, (msg) ->
    DAY = 1000 * 60 * 60  * 24
    d1 = new Date()
    d2 = new Date('5/27/2013')
    days_passed = Math.round((d2.getTime() - d1.getTime()) / DAY)
    msg.send "There are #{days_passed} until the next manburger."