execute unless entity @s[advancements={medabots_server:stages/wave_1/laboratory_a_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:stages/wave_1/ruins_in_a_first_go=true}] unless entity @s[advancements={medabots_server:stages/wave_1/laboratory_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run function medabots_server:stage/create/laboratory_a/first_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/laboratory_a_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/ruins_in_a_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/laboratory_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.0.version","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.mt_battle"},{"translate":"medabots_server:sign.stage.version.other.wave","with":[{"text":"1"}]}]}]}