scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_out_e run teleport @s[scores={Dialog=0,Verified=3}] 30 59 47 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/other={ruins_out_e_dhranios=false},medabots_server:special_items/passes/grassland_d=true}] run tag @s add dialog_other_ruins_out_e_dhranios