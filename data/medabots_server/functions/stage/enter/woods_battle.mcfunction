teleport @s[scores={Dialog=0,Verified=3}] -1949 51 -616 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_sloan_begin=true,vs_sloan=false}}] run tag @s add dialog_infinity_vs_sloan
execute if entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy_battle=true,gillgirls_jammy=false}}] run tag @s add dialog_infinity_gillgirls_jammy