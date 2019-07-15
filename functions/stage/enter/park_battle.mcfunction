teleport @s[scores={Dialog=0,Verified=3}] -1949 51 -564 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={spykes_insperation=true,vs_samantha=false}}] run tag @s add dialog_infinity_vs_samantha