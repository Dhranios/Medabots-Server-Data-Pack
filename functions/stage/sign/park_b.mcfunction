tellraw @s {"translate":"medabots_server:message.stage.description.park_b"}
tellraw @s {"translate":"medabots_server:message.stage.requires"}
tellraw @s {"translate":"medabots_server:sign.stage.version.first_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.special"}]},{"translate":"medabots_server:message.stage.requires.and"},{"translate":"medabots_server:message.stage.requires.medapart","with":[{"translate":"medabots_server:move.two_legged"}]}]}
tellraw @s {"translate":"medabots_server:sign.stage.version.second_go","extra":[{"translate":"medabots_server:message.stage.requires.version"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.park","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]},{"translate":"medabots_server:message.stage.requires.and"},{"translate":"medabots_server:message.stage.requires.medapart.any_of","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:move.destroy","extra":[{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.hammer"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.laser"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.press"}]}}},{"translate":"medabots_server:message.stage.requires.and"},{"translate":"medabots_server:message.stage.requires.medapart","with":[{"translate":"medabots_server:move.two_legged"}]}]}
tellraw @s {"text":""}
tellraw @s {"translate":"medabots_server:message.stage.score.version","with":[{"translate":"medabots_server:sign.stage.version.second_go"}]}
tellraw @s {"translate":"medabots_server:message.stage.score.calculate","extra":[{"translate":"medabots_server:message.stage.score.time"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.damage"},{"text":"\n"},{"translate":"medabots_server:message.stage.score.money","with":[{"text":"???"}]}]}
