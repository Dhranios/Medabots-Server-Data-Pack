execute unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_special=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:special_items/passes/three_colors=true}] unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_special=true,medabots_server:mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_a/special_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_special=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:special_items/passes/three_colors=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:advancements.special_items.passes.three_colors"}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_special=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.0.version","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.special"}]},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.mt_battle"},{"translate":"medabots_server:sign.stage.version.other.wave","with":[{"text":"1"}]}]}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}