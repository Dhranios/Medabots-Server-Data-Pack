teleport @s[scores={Dialog=0,Verified=3}] -1727 50 -575 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:wave_1/story_progression={shrimplips_is_recruiting=true,rubberobo_enters_laboratory_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_laboratory_b