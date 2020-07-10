execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[tag=has_medabot_form] run function medabots_server:items/player_interactions/medabot/revert
teleport @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] 28 32 35 90 0
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] run data merge block 30 59 42 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_7/enter"}}'}
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] run setblock 30 60 40 minecraft:air
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] Music 0
scoreboard players set @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] MusicType 4
scoreboard players set @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] Stage 42
scoreboard players set @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] Gamemode 0
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/arena_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute unless entity @s[scores={Level=35..}] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_7.0"}]}
execute unless entity @s[advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true}] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_7.1"}]}

execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=random_arena_version] unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/generic/random_arena_no_tinpet
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=random_arena_version] if entity @s[tag=vs_cpus,scores={ArenaType=2},nbt=!{Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid.ally"}
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=random_arena_version] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] if entity @s[tag=vs_cpus,scores={ArenaType=2},nbt={Inventory:[{Slot:-106b,tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}]}] run function medabots_server:stage/sign/lagdou_ruins_7/random
execute if entity @s[scores={Dialog=0,Level=35..},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_second_go=true},gamemode=adventure,tag=random_arena_version] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] unless entity @s[tag=vs_cpus,scores={ArenaType=2}] run function medabots_server:stage/sign/lagdou_ruins_7/random