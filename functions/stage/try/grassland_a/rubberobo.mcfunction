execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_rubberobo=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:special_items/passes/robo_4=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.rubberobo.0"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.rubberobo.1"}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_rubberobo=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.rubberobo.2"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_rubberobo=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:special_items/passes/robo_4=true},nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_rubberobo=true,medabots_server:mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_a/rubberobo