teleport @s[scores={Dialog=0,Verified=3}] -1620 50 -526 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={rubberobo_interview=true,where_is_karin=false}}] run tag @s add dialog_infinity_where_is_karin