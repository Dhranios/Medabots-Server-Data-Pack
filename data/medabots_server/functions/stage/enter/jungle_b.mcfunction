scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:jungle_b run teleport @s[scores={Dialog=0,Verified=3}] 46 59 46 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_leaves_ruins_out_a=true,rubberobo_enters_jungle_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_jungle_b