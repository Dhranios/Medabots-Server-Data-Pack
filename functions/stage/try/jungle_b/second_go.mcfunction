execute if entity @s[advancements={medabots_server:stages/wave_1/jungle_b_first_go=true}] run function medabots_server:stage/create/jungle_b/second_go_initialization
execute unless entity @s[advancements={medabots_server:stages/wave_1/rock_b_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]}]}