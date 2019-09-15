teleport @s[scores={Dialog=0,Verified=3}] -1715 51 -396 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_is_recruiting=true,rubberobo_enters_seashore_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_seashore_b
execute if entity @s[advancements={medabots_server:story_progression/infinity={haru_and_tune=true,teach_sloan=false}}] run tag @s add dialog_infinity_teach_sloan