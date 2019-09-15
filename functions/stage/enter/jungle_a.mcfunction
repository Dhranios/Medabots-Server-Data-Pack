teleport @s[scores={Dialog=0,Verified=3}] -1673 51 -148 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={jammy_explained=true,rubberobo_enters_jungle_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_jungle_a