scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:park_a run teleport @s[scores={Dialog=0,Verified=3}] 45 59 46 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={bonus_area_pass=true,spykes_challenge=false}}] run tag @s add dialog_infinity_spykes_challenge