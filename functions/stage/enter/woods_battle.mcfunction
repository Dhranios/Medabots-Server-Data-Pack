teleport @s[scores={Dialog=0,Verified=3}] -1949 51 -617 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_sloan_begin=true,vs_sloan=false}}] run tag @s add dialog_infinity_vs_sloan