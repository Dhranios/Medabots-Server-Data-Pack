execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_sloan
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1949 51 -621 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -1946 51 -623 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -1951 51 -623 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1..}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..191}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -617 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_sloan.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_sloan.2"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_sloan.3"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_sloan.4"}]}
execute if entity @s[scores={Dialog=168}] positioned -1947 51 -624 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=168..191}] at @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_sloan.5"}]}
execute if entity @s[scores={Dialog=192}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -640
execute if entity @s[scores={Dialog=193..272}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=192}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -640
execute if entity @s[scores={Dialog=192}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s add walking
execute if entity @s[scores={Dialog=193..268}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=268}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
tag @s[scores={Dialog=272}] remove dialog_infinity_vs_sloan
stopsound @s[scores={Dialog=272}] music
scoreboard players set @s[scores={Dialog=272}] MusicType 1
scoreboard players set @s[scores={Dialog=272}] Music 0
scoreboard players reset @s[scores={Dialog=272}] DialogNr
scoreboard players set @s[scores={Dialog=272}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250