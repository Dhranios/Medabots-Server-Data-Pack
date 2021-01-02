scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:rock_e run teleport @s[scores={Dialog=0,Verified=3}] 46 59 47 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/other={rock_e_ultimategold=false},medabots_server:special_items/passes/gold=true}] run tag @s add dialog_other_rock_e_ultimategold