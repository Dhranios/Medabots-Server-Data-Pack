teleport @s[scores={Dialog=0,Verified=3}] -1714 51 -683 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={tunes_tinpet=true,seaslug_returns=false}}] run tag @s add dialog_infinity_seaslug_returns
execute if entity @s[advancements={medabots_server:story_progression/infinity={harus_tinpet=true,seaslug_returns=false}}] run tag @s add dialog_infinity_seaslug_returns