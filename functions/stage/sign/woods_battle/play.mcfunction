teleport @s[scores={Error=0,Dialog=0},gamemode=adventure] -1947 37 -614 90 0
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/woods_battle/enter"}}'}
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run setblock -1950 53 -642 minecraft:red_wool
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0,Dialog=0},gamemode=adventure] MusicType 4
execute if entity @s[scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
execute if entity @s[advancements={medabots_server:wave_1/story_progression={opening=true,opening_battle=false}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_koji=true,vs_koji_battle=false}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_sloan=true,vs_sloan_battle=false}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:wave_1/story_progression={gillgirls_jammy=true,gillgirls_jammy_battle=false}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:wave_1/story_progression={desperate_for_love=true,desperate_for_love_battle=false}},scores={Error=0,Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/story_battle
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}