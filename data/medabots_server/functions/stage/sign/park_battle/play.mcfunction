execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] -1944 37 -565 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_battle/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run setblock -1950 53 -591 minecraft:red_wool
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] MusicType 4
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Stage 50
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Gamemode 0
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/arena_settings
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[scores={KillStreak=1,Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[scores={KillStreak=2,Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}

execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=random_arena_version] unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/generic/random_arena_no_tinpet
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=random_arena_version] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/sign/park_battle/random_story