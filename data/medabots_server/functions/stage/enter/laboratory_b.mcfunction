scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:laboratory_b run teleport @s[scores={Dialog=0,Verified=3}] 33 59 58 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={shrimplips_is_recruiting=true,rubberobo_enters_laboratory_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_laboratory_b