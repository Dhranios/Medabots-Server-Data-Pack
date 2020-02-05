tellraw @s {"translate":"medabots_server:message.stage.description.jungle_a"}
tellraw @s {"translate":"medabots_server:message.stage.score.version","with":[{"translate":"medabots_server:sign.stage.version.second_go"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.money"}]}
function medabots_server:stage/sign/jungle_a/scoreboard