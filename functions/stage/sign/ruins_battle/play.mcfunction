teleport @s[scores={Dialog=0},gamemode=adventure] -1995 37 -557 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_battle/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1998 53 -583 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_seaslug=true,vs_seaslug_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={motivated_fight=true,motivated_fight_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_screws=true,vs_screws_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}