execute unless entity @s[advancements={medabots_server:stages/wave_1/jungle_c_second_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:stages/wave_1/jungle_c_first_go=true}] run function medabots_server:stage/create/jungle_c/second_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/jungle_c_second_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/jungle_c_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"C"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]}]}