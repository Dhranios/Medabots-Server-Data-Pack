execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_spyke_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.screws_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -603 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] positioned -1996 51 -604 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -603 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -2006 51 -611 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-45.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2103051}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11454154}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:70922}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-2006,y=51,z=-611,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute at @s as @e[x=-329,y=55,z=5,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 80 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
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
execute if entity @s[scores={Dialog=271}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -606
execute if entity @s[scores={Dialog=272..308}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
stopsound @s[scores={Dialog=288}] music
scoreboard players set @s[scores={Dialog=288}] MusicType 1
scoreboard players set @s[scores={Dialog=288}] Music 0
execute if entity @s[scores={Dialog=308..391}] at @e[tag=kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.8"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.9"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.vs_spyke_battle.10"}]}
execute if entity @s[scores={Dialog=392},tag=!already_gave_items] run function medabots_server:give_items/medaparts/fancyroll
tag @s[scores={Dialog=392}] add already_gave_items
execute if entity @s[scores={Dialog=412}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=413..}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=508}] remove dialog_infinity_vs_spyke_battle
tag @s[scores={Dialog=508}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=508}] DialogNr
scoreboard players set @s[scores={Dialog=508}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.screws music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 250