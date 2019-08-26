scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression shrimplips_is_recruiting
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -388 55 -51 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -353 55 -36 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -350 55 -39 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[45.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:854784}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:8653587}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:12955077}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-350,y=55,z=-39,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -353 55 -40 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:4007937}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:14331567}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:15856365}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-353,y=55,z=-40,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -357 55 -37 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-75.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:3681047}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:8810305}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:14343129}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-357,y=55,z=-37,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -357 55 -35 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-105.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1251852}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:11585482}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:201734}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-357,y=55,z=-35,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -67 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.2"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.4"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.6"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.7"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.8"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.9"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.10"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.11"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.12"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.13"}]}
scoreboard players set @s[scores={Dialog=760..959},x=-353,y=55,z=-36,distance=..6] Dialog 960 
execute if entity @s[scores={Dialog=760}] unless entity @s[tag=!passed_on_medal,tag=!already_gave_items] run scoreboard players set @s Dialog 960
execute if entity @s[scores={Dialog=960}] unless entity @s[x=-353,y=55,z=-36,distance=..6] run tag @s add passed_on_medal
execute if entity @s[scores={Dialog=960},tag=passed_on_medal] run tag @e[tag=kid,tag=this_dialog,sort=random,limit=1] add joins
execute if entity @s[scores={Dialog=960},tag=!passed_on_medal] run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog] -357 55 -39 -55 0
execute if entity @s[scores={Dialog=960..1468},tag=!passed_on_medal] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=960..},tag=passed_on_medal] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=joins,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=960..970}] as @e[tag=kid,tag=joins,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.14"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.15"}]}
execute if entity @s[scores={Dialog=1048},tag=!passed_on_medal,tag=!already_gave_items] run function medabots_server:give_items/medal/monkey
tag @s[scores={Dialog=1048}] add already_gave_items
tellraw @s[scores={Dialog=1068}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.16"}]}
tellraw @s[scores={Dialog=1172}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.17"}]}
tellraw @s[scores={Dialog=1188},tag=!passed_on_medal] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.18"}]}
tellraw @s[scores={Dialog=1188},tag=passed_on_medal] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.18.alternate"}]}
tellraw @s[scores={Dialog=1204},tag=!passed_on_medal] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.19"}]}
scoreboard players set @s[scores={Dialog=1228},tag=passed_on_medal] Dialog 1732
tellraw @s[scores={Dialog=1236}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.20"}]}
tellraw @s[scores={Dialog=1268}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.21"}]}
tellraw @s[scores={Dialog=1276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.22"}]}
tellraw @s[scores={Dialog=1372}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.23"}]}
tellraw @s[scores={Dialog=1428}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.24"}]}
tellraw @s[scores={Dialog=1436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.25"}]}
execute if entity @s[scores={Dialog=1468}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -80 0
execute if entity @s[scores={Dialog=1469..1548}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=1549}] run kill @e[tag=shrimplips,tag=this_dialog,limit=1]
stopsound @s[scores={Dialog=1508}] music
scoreboard players set @s[scores={Dialog=1508}] MusicType 1
scoreboard players set @s[scores={Dialog=1508}] Music 0
execute if entity @s[scores={Dialog=1508..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.26"}]}
tellraw @s[scores={Dialog=1556}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.27","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1596}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.28"}]}
tellraw @s[scores={Dialog=1612}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.29"}]}
tellraw @s[scores={Dialog=1644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.30"}]}
tellraw @s[scores={Dialog=1660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.31"}]}
tellraw @s[scores={Dialog=1708}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.shrimplips_is_recruiting.32"}]}
tag @s[scores={Dialog=1732}] remove dialog_infinity_shrimplips_is_recruiting
tag @s[scores={Dialog=1732}] remove already_gave_items
tag @s[scores={Dialog=1732}] remove passed_on_medal
advancement grant @s[scores={Dialog=1732}] only medabots_server:special_items/passes/robo_3
stopsound @s[scores={Dialog=1732,MusicType=-1}] music
scoreboard players set @s[scores={Dialog=1732,MusicType=-1}] Music 0
scoreboard players set @s[scores={Dialog=1732,MusicType=-1}] MusicType 1
scoreboard players reset @s[scores={Dialog=1732}] DialogNr
scoreboard players set @s[scores={Dialog=1732}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744