tellraw @s {"translate":"medabots_server:message.stage.description.hard_fly_course_1"}
tellraw @s {"translate":"medabots_server:message.stage.score.fly_course.normal"}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.rings"}]}
function medabots_server:stage/sign/hard_fly_course_1/scoreboard
tellraw @s {"translate":"medabots_server:message.stage.score.fly_course.challenge"}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.rings"}]}
function medabots_server:stage/sign/hard_fly_course_1/challenge_scoreboard