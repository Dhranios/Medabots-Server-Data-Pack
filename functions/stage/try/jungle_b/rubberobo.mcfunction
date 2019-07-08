execute unless entity @s[advancements={medabots_server:stages/wave_1/jungle_b_rubberobo=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:stages/wave_1/ruins_out_a_rubberobo=true}] unless entity @s[advancements={medabots_server:stages/wave_1/jungle_b_rubberobo=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run function medabots_server:stage/create/jungle_b/rubberobo_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/jungle_b_rubberobo=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/ruins_out_a_rubberobo=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.rubberobo"}]}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/jungle_b_rubberobo=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.0.version","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.rubberobo"}]},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.mt_battle"},{"translate":"medabots_server:sign.stage.version.other.wave","with":[{"text":"1"}]}]}]}