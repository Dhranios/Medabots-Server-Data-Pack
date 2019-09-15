execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure] -1944 37 -565 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_battle/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1950 53 -591 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_shrimplips=true,vs_shrimplips_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy=true,shrimplips_jammy_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={new_look_new_chances=true,new_look_new_chances_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}