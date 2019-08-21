execute unless entity @s[advancements={medabots_server:stages/wave_1/grassland_b_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:wave_1/story_progression={vs_koji_battle=true}}] unless entity @s[advancements={medabots_server:stages/wave_1/grassland_b_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_b/first_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_b_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:wave_1/story_progression={vs_koji_battle=true}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.battle.at","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:location.woods_battle"}]}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_b_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.0.version","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.mt_battle"},{"translate":"medabots_server:sign.stage.version.other.wave","with":[{"text":"1"}]}]}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}