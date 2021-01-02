execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add not_valid_tinpet
tellraw @s[tag=not_valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[tag=!not_valid_tinpet,tag=vs_cpus,scores={ArenaType=2},nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tag @s add not_valid_ally_tinpet
tellraw @s[tag=not_valid_ally_tinpet] {"translate":"medabots_server:message.tinpet.not_valid.ally"}
execute if entity @s[tag=!not_valid_ally_tinpet,tag=!not_valid_tinpet] run function medabots_server:stage/create/lagdou_ruins_1/empty_initialization
tag @s remove not_valid_tinpet
tag @s remove not_valid_ally_tinpet
execute if entity @s[tag=random_arena_version] unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/generic/arena_settings