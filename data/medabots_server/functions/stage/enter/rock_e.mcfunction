teleport @s[scores={Dialog=0,Verified=3}] -1860 51 -298 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/other={rock_e_ultimategold=false},medabots_server:special_items/passes/gold=true}] run tag @s add dialog_other_rock_e_ultimategold