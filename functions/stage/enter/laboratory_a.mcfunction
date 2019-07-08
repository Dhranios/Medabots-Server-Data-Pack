teleport @s[scores={Dialog=0,Verified=3}] -1772 50 -285 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={rubberobo_leaves_ruins_out_a=true,rubberobo_enters_laboratory_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_laboratory_a