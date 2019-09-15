execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s[scores={Dialog=0},gamemode=adventure] -1987 37 -607 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/icefield_battle/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -2000 53 -634 minecraft:red_wool
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}},scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}