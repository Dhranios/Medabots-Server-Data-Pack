execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_d_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:special_items/passes/grassland_d=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_d.first_go.0"}]}
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}]},nbt=!{Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_kabuto_medaforce"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_d.first_go.1"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.grassland_d.first_go.2"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/grassland_d_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:special_items/passes/grassland_d=true}] unless entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}]},nbt=!{Inventory:[{Slot:4b,tag:{medabots_server:{id:"medabots_server:activate_kabuto_medaforce"}}}]}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_d/first_go_initialization