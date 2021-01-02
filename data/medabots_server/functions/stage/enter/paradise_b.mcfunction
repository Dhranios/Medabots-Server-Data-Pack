scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:paradise_b run teleport @s[scores={Dialog=0,Verified=3}] 31 59 31 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={vs_jaxy_battle=true,the_final_stage=false}}] run tag @s add dialog_infinity_the_final_stage