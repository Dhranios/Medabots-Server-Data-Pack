execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] -1305 25 -75 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_1/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run setblock -1299 53 -117 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}

execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=random_arena_version] unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/generic/random_arena_no_tinpet
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=random_arena_version] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/lagdou_ruins_1/random