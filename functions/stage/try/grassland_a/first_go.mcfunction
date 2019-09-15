execute unless entity @s[advancements={medabots_server:story_progression/infinity={opening_battle=true}}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.first_go.0"}]}
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"wave"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.first_go.1"}]}
execute unless entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"float"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.first_go.2"}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_a.first_go.3"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={opening_battle=true}}] unless entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"wave"}}}}}}}}] if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"float"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_a/first_go