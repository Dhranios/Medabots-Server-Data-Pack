tellraw @s {"translate":"medabots_server:message.stage.requires"}
tellraw @s {"translate":"medabots_server:sign.stage.first_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.wins.1","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"C"}]}]}]}
tellraw @s {"translate":"medabots_server:sign.stage.second_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.wins.1","with":[{"translate":"medabots_server:location.boxer"}]}]}
tellraw @s {"text":""}
tellraw @s {"translate":"medabots_server:message.stage.score.version","with":[{"translate":"medabots_server:sign.stage.second_go"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.best"}
tellraw @s {"translate":"medabots_server:message.stage.score.scoreholder","with":[{"text":"0"},{"translate":"medabots_server:message.stage.score.no_scoreholder"},{"translate":"medabots_server:message.stage.score.no_scoreholder.yet"}]}