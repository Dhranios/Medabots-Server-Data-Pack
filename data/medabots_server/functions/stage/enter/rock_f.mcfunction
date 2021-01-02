scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:rock_f run teleport @s[scores={Dialog=0,Verified=3}] 29 59 30 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:main/kamikaze_bomber=true,medabots_server:story_progression/other={rock_f_dhranios=false}}] run tag @s add dialog_other_rock_f_dhranios