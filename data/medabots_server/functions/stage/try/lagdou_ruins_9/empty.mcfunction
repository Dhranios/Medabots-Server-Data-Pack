execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add not_valid_tinpet
tellraw @s[tag=not_valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[tag=!not_valid_tinpet] store result score @s MedabotLevel run data get entity @s SelectedItem.tag.medabots_server.items.medal.tag.medabots_server.xp.levels
execute if entity @s[tag=!not_valid_tinpet] unless entity @s[scores={MedabotLevel=45..}] run tag @s add not_high_enough_level
tellraw @s[tag=not_high_enough_level] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_9.0"}]}
execute if entity @s[tag=!not_valid_tinpet] unless entity @s[advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_9.1"}]}
execute if entity @s[tag=!not_valid_tinpet,tag=vs_cpus,scores={ArenaType=2},nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add not_valid_ally_tinpet
tellraw @s[tag=not_valid_ally_tinpet] {"translate":"medabots_server:message.tinpet.not_valid.ally"}
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet,tag=vs_cpus,scores={ArenaType=2}] store result score @s MedabotLevel run data get entity @s SelectedItem.tag.medabots_server.items.medal.tag.medabots_server.xp.levels
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet,tag=vs_cpus,scores={ArenaType=2}] unless entity @s[scores={MedabotLevel=45..}] run tag @s add not_high_enough_ally_level
tellraw @s[tag=not_high_enough_ally_level] {"translate":"medabots_server:message.stage.requires.not_matching.ally","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_9.0"}]}
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet,tag=!not_high_enough_level,tag=!not_high_enough_ally_level,advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true}] run function medabots_server:stage/create/lagdou_ruins_9/empty_initialization
tag @s remove not_valid_tinpet
tag @s remove not_valid_ally_tinpet
tag @s remove not_high_enough_level
tag @s remove not_high_enough_ally_level
execute if entity @s[tag=random_arena_version] unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/generic/arena_settings