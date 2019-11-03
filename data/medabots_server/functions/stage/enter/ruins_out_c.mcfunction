teleport @s[scores={Dialog=0,Verified=3}] -1635 50 -673 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={brass_saved=true,koji_is_worried=false}}] run tag @s add dialog_infinity_koji_is_worried