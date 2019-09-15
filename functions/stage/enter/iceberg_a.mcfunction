teleport @s[scores={Dialog=0,Verified=3}] -1704 50 -221 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={jammy_explained=true,rubberobo_enters_iceberg_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_iceberg_a