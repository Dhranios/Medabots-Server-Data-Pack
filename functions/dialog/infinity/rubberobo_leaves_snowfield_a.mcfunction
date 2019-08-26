scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression rubberobo_leaves_snowfield_a
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] positioned -1621 51 -215 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1622 51 -219 run function medabots_server:spawn_entities/cutscene/rubberobo
teleport @s[scores={Dialog=1}] -1620 51 -216 145 0
execute if entity @s[scores={Dialog=1..103}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..43}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_snowfield_a.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_snowfield_a.2"}]}
execute if entity @s[scores={Dialog=44}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1620 51 -184
execute if entity @s[scores={Dialog=45..204}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=204}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=204}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=104..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_snowfield_a.3"}]}
tellraw @s[scores={Dialog=158}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_snowfield_a.4"}]}
stopsound @s[scores={Dialog=206}] music
scoreboard players set @s[scores={Dialog=206}] MusicType 1
scoreboard players set @s[scores={Dialog=206}] Music 0
tag @s[scores={Dialog=206}] remove dialog_infinity_rubberobo_leaves_snowfield_a
scoreboard players reset @s[scores={Dialog=206}] DialogNr
scoreboard players set @s[scores={Dialog=206}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744