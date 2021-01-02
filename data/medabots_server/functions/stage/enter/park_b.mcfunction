scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:park_b run teleport @s[scores={Dialog=0,Verified=3}] 46 59 47 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={death_break=true,erikas_article=false}}] run tag @s add dialog_infinity_erikas_article