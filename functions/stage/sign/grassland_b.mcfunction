tellraw @s {"translate":"medabots_server:message.stage.description.grassland_b"}
tellraw @s {"translate":"medabots_server:message.stage.requires"}
tellraw @s {"translate":"medabots_server:sign.stage.version.first_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.battle.at","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:location.woods_battle"}]}]}
tellraw @s {"translate":"medabots_server:sign.stage.version.second_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.wins.1","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]}]}]}
tellraw @s {"text":""}
tellraw @s {"translate":"medabots_server:message.stage.score.version","with":[{"translate":"medabots_server:sign.stage.version.second_go"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.money","with":[{"text":"???"}]}]}
tellraw @s {"translate":"medabots_server:message.stage.score.best"}
tellraw @s {"translate":"medabots_server:message.stage.score.scoreholder","with":[{"text":"0"},{"translate":"medabots_server:message.stage.score.no_scoreholder"},{"translate":"medabots_server:message.stage.score.no_scoreholder.yet"}]}