teleport @s[scores={Dialog=0,Verified=3}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={rubberobo_leaves_seashore_a=true,vs_squidguts=false}}] run tag @s add dialog_infinity_vs_squidguts