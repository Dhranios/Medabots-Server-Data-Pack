teleport @s[scores={Dialog=0,Verified=3}] -1809 51 -587 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={bonus_area_pass=true,spykes_challenge=false}}] run tag @s add dialog_infinity_spykes_challenge