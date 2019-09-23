teleport @s[scores={Dialog=0,Verified=3}] -1811 51 -683 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={death_break=true,erikas_article=false}}] run tag @s add dialog_infinity_erikas_article