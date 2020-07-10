scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_out_b run teleport @s[scores={Dialog=0,Verified=3}] 45 59 47 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={jammy_explained=true,rubberobo_enters_ruins_out_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_ruins_out_b
execute if entity @s[advancements={medabots_server:story_progression/infinity={blue_man_defeated=true,peace_kiss=false}}] run tag @s add dialog_infinity_peace_kiss