tellraw @s {"translate":"medabots_server:message.stage.description.ruins_out_c"}
tellraw @s {"translate":"medabots_server:message.stage.score.version","with":[{"translate":"medabots_server:sign.stage.version.second_go"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.money"}]}
function medabots_server:stage/sign/ruins_out_c/scoreboard