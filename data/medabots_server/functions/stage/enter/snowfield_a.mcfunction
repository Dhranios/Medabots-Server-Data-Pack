teleport @s[scores={Dialog=0,Verified=3}] -1620 51 -216 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_breakout=true,rubberobo_enters_snowfield_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_snowfield_a