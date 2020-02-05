tellraw @s {"translate":"medabots_server:message.stage.description.park_battle"}
tellraw @s {"translate":"medabots_server:message.stage.score"}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.kills"}]}
function medabots_server:stage/sign/park_battle/scoreboard