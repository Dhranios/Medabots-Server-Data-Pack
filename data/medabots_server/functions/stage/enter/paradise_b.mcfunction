teleport @s[scores={Dialog=0,Verified=3}] -1634 51 -607 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_jaxy_battle=true,the_final_stage=false}}] run tag @s add dialog_infinity_the_final_stage