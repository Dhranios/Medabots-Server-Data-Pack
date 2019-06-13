teleport @s[scores={Dialog=0,Verified=3}] -1683 50 -259 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={tunes_order=true,medanappings=false}}] run tag @s add dialog_infinity_medanappings
execute if entity @s[advancements={medabots_server:wave_1/story_progression={rubberobo_breakout=true,rubberobo_enters_ruins_in_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_ruins_in_a