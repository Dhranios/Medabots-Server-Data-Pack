execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other magolor_appears
stopsound @s[scores={Dialog=1}] music
execute if entity @s[scores={Dialog=1}] run playsound medabots_server:music.entity.magolor music @a -292 58 195 1000
scoreboard players set @s[scores={Dialog=1}] MusicType 2
scoreboard players set @s[scores={Dialog=1}] Music 2676
execute if entity @s[scores={Dialog=1..}] run teleport @s -292 55 205
execute if entity @s[scores={Dialog=286}] positioned -292 68 195 run function medabots_server:spawn_entities/cutscene/magolor
execute at @s as @e[x=-292,y=68,z=195,tag=magolor,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=286}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.1"}]}
execute if entity @s[scores={Dialog=286}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @s[scores={Dialog=286..307}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~-0.1667 ~ ~ ~3.75
execute if entity @s[scores={Dialog=308..328}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~-3.75
execute if entity @s[scores={Dialog=329..349}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~3.75
execute if entity @s[scores={Dialog=350..370}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~-3.75
execute if entity @s[scores={Dialog=391..394}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~1.875
execute if entity @s[scores={Dialog=393}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.2"}]}
execute if entity @s[scores={Dialog=496}] run clear @a minecraft:golden_helmet{"medabots_server":{id:"medabots_server:unknown_crown"}}
execute if entity @s[scores={Dialog=477..496}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~0.5 ~
execute if entity @s[scores={Dialog=496}] as @e[tag=magolor,tag=this_dialog,limit=1] run data merge entity @s {HandItems:[{id:"minecraft:golden_helmet",Count:1b},{}]}
execute if entity @s[scores={Dialog=497..516}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~-0.5 ~
execute if entity @s[scores={Dialog=561}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.3"}]}
execute if entity @s[scores={Dialog=690}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.4"}]}
execute if entity @s[scores={Dialog=770}] as @e[tag=magolor,tag=this_dialog,limit=1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b}],HandItems:[]}
execute if entity @s[scores={Dialog=770..955}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run particle minecraft:poof ~-1 ~-1 ~-1 2 2 2 0 4
execute if entity @s[scores={Dialog=955}] run summon minecraft:wither_skeleton -292 64 195 {Invulnerable:1b,Silent:1b,NoGravity:1b,NoAI:1b,CustomName:'{"translate":"medabots_server:entity.magolor"}',ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",Count:1b}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{},{}],HandDropChances:[0.0f,0.0f],Rotation:[0.0f,10.0f],LeftHanded:1b,Tags:["magolor","cutscene","crowned"]}
execute at @s as @e[x=-292,y=64,z=195,tag=magolor,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=955}] as @e[tag=magolor,tag=!crowned,tag=this_dialog,limit=1] at @s run teleport @s ~ -1000 ~
execute if entity @s[scores={Dialog=955}] as @e[tag=magolor,tag=!crowned,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=955}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.5"}]}
execute if entity @s[scores={Dialog=1053}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.6"}]}
execute if entity @s[scores={Dialog=1091}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.7"}]}
execute if entity @s[scores={Dialog=1091}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~-0.5 ~ ~-10
execute if entity @s[scores={Dialog=1154}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.8"}]}
execute if entity @s[scores={Dialog=1154}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~-10 ~-10
execute if entity @s[scores={Dialog=1275}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.9"}]}
execute if entity @s[scores={Dialog=1275}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~0.5 ~10 ~10
execute if entity @s[scores={Dialog=1345}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.10"}]}
execute if entity @s[scores={Dialog=1345}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~1 ~10 ~20
execute if entity @s[scores={Dialog=1420}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.11"}]}
execute if entity @s[scores={Dialog=1420}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~-0.5 ~-10 ~-10
execute if entity @s[scores={Dialog=1479}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.12"}]}
execute if entity @s[scores={Dialog=1479}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~-0.5 ~ ~-5
execute if entity @s[scores={Dialog=1579}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.13"}]}
execute if entity @s[scores={Dialog=1579}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~-10
execute if entity @s[scores={Dialog=1683}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.14"}]}
execute if entity @s[scores={Dialog=1683}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~ ~10
execute if entity @s[scores={Dialog=1720}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run particle minecraft:explosion ~-1 ~-1 ~-1 2 2 2 0 60
execute if entity @s[scores={Dialog=1720}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run clone -298 39 195 -292 45 195 ~-3 ~-1 ~-2
execute if entity @s[scores={Dialog=1750..1767}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~0.118 ~-0.0588 ~ ~1.176
execute if entity @s[scores={Dialog=1767}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.15"}]}
execute if entity @s[scores={Dialog=1820}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~-1
execute if entity @s[scores={Dialog=1820}] run tellraw @s {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.magolor"},{"translate":"medabots_server:dialog.magolor.16"}]}
execute if entity @s[scores={Dialog=1820}] run advancement grant @s only medabots_server:special_items/passes/dimensional
execute if entity @s[scores={Dialog=1948}] as @e[tag=magolor,tag=this_dialog,limit=1] at @s run particle minecraft:poof ~-1 ~-1 ~-1 2 2 2 0 60
execute if entity @s[scores={Dialog=1948}] run fill -295 63 193 -289 69 193 minecraft:air
tag @s[scores={Dialog=1948}] remove dialog_other_magolor_appears
scoreboard players reset @s[scores={Dialog=1948}] DialogNr
scoreboard players set @s[scores={Dialog=1948}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog