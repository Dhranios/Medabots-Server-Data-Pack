execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add not_valid_tinpet
tellraw @s[tag=not_valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute unless entity @s[advancements={medabots_server:special_items/passes/smash_bros=true}] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.final_destination_1.0"}]}
execute unless entity @s[scores={KillStreak=5}] if entity @s[tag=!not_valid_tinpet,tag=vs_cpus,scores={ArenaType=2},nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add not_valid_ally_tinpet
tellraw @s[tag=not_valid_ally_tinpet] {"translate":"medabots_server:message.tinpet.not_valid.ally"}
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet,advancements={medabots_server:special_items/passes/smash_bros=true}] unless entity @s[scores={KillStreak=5}] run function medabots_server:stage/create/final_destination_1/empty_initialization
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet,advancements={medabots_server:special_items/passes/smash_bros=true},scores={KillStreak=5}] run function medabots_server:stage/create/final_destination_1/master_hand
tag @s remove not_valid_tinpet
tag @s remove not_valid_ally_tinpet
execute if entity @s[tag=random_arena_version] unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/generic/arena_settings