teleport @s[scores={Dialog=0,Verified=3}] -1892 51 -489 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/other={ruins_out_e_fvbico=false},medabots_server:special_items/passes/grassland_d=true}] run tag @s add dialog_other_ruins_out_e_fvbico