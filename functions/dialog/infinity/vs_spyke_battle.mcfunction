scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression vs_spyke_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 100
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1998 51 -603 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["samantha","cutscene"],Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6176544}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9123205}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5530275}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1998,y=51,z=-603,tag=samantha,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1996 51 -604 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["sloan","cutscene"],Rotation:[80.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2435929}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2635303}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15515463}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1996,y=51,z=-604,tag=sloan,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2001 51 -603 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["spyke","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2764847}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6176294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3291004}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-2001,y=51,z=-603,tag=spyke,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2006 51 -611 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["mugged_kid","cutscene"],Rotation:[-45.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2103051}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11454154}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:70922}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-2006,y=51,z=-611,tag=mugged_kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1999 51 -608 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.4"}]}
tellraw @s[scores={Dialog=156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.5"}]}
tellraw @s[scores={Dialog=180}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.6"}]}
execute if entity @s[scores={Dialog=188}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=189..269}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=188}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=189..275}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.7"}]}
execute if entity @s[scores={Dialog=248}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=249..329}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=269}] as @e[tag=samantha,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=275}] as @e[tag=sloan,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=329}] as @e[tag=spyke,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=271}] as @e[tag=mugged_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -606
execute if entity @s[scores={Dialog=272..308}] as @e[tag=mugged_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=288}] music
scoreboard players set @s[scores={Dialog=288}] MusicType 1
scoreboard players set @s[scores={Dialog=288}] Music 0
execute if entity @s[scores={Dialog=308..391}] at @e[tag=mugged_kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=mugged_kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.8"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.9"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.10"}]}
execute if entity @s[scores={Dialog=392},tag=!already_gave_items] run function medabots_server:give_items/medaparts/fancyroll
tag @s[scores={Dialog=392}] add already_gave_items
execute if entity @s[scores={Dialog=412}] as @e[tag=mugged_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=413..}] as @e[tag=mugged_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=508}] remove dialog_infinity_vs_spyke_battle
tag @s[scores={Dialog=508}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=508}] DialogNr
scoreboard players set @s[scores={Dialog=508}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250