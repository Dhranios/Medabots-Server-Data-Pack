execute unless entity @s[advancements={medabots_server:stages/wave_1/ruins_in_d_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:special_items/passes/ruins_in_d=true}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"wheel"}}}}}}}}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/ruins_in_d/first_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/ruins_in_d_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:special_items/passes/ruins_in_d=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:advancements.special_items.passes.ruins_in_d"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"wheel"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart","with":[{"translate":"medabots_server:move.wheel"}]}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}