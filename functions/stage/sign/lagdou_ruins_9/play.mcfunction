execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] -1280 25 -247 90 0
execute if entity @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_9/enter"}}'}
execute if entity @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] run setblock -1289 53 -281 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] Music 0
scoreboard players set @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] MusicType 4
execute if entity @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Dialog=0,Level=45..}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_9.0"}]}
execute unless entity @s[scores={Dialog=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_9.1"}]}

execute if entity @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=random_arena_version] unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/generic/random_arena_no_tinpet
execute if entity @s[scores={Dialog=0,Level=45..},advancements={medabots_server:stages/wave_1/lagdou_ruins_8_second_go=true},gamemode=adventure,tag=random_arena_version] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/lagdou_ruins_9/random