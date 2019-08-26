scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:wave_1/story_progression vs_gillgirl_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -608 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -604 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=1}] positioned -2005 51 -604 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1..1096}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..239}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..902}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.5"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.7"}]}
execute if entity @s[scores={Dialog=240}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=241..290}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=291..1060}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=255},tag=!already_gave_items] run summon minecraft:item -1998 51 -601 {PickupDelay:427s,Tags:["cutscene"],Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.ghost_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.ghost_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:ghost_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=255}] run data modify entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=255}] run data modify entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[scores={Dialog=270},tag=!already_gave_items] run summon minecraft:item -2000 51 -598 {PickupDelay:412s,Tags:["cutscene"],Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.unicorn_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.unicorn_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:unicorn_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=270}] run data modify entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=270}] run data modify entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
tellraw @s[scores={Dialog=255}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.8"}]}
tellraw @s[scores={Dialog=270}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.9"}]}
tellraw @s[scores={Dialog=290}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.10"}]}
tellraw @s[scores={Dialog=322}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.11"}]}
tellraw @s[scores={Dialog=386}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.12"}]}
tellraw @s[scores={Dialog=458}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.13"}]}
tellraw @s[scores={Dialog=490}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.14"}]}
execute if entity @s[scores={Dialog=682},tag=already_gave_items] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add unicorn
execute if entity @s[scores={Dialog=682},tag=already_gave_items] run scoreboard players set @s Dialog 903
tellraw @s[scores={Dialog=514}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.15"}]}
tellraw @s[scores={Dialog=578}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.16"}]}
tellraw @s[scores={Dialog=602}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.17"}]}
tellraw @s[scores={Dialog=618}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.18"}]}
tellraw @s[scores={Dialog=626}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.19"}]}
tellraw @s[scores={Dialog=634}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.20"}]}
tag @s[scores={Dialog=682}] add already_gave_items
execute if entity @s[scores={Dialog=682..782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] unless entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 782
execute if entity @s[scores={Dialog=682..782}] unless entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 782
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add ghost
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add unicorn
execute if entity @s[scores={Dialog=782}] run data merge entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=782}] run data merge entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=782}] if entity @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1] if entity @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 903
tellraw @s[scores={Dialog=782}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.21"}]}
tellraw @s[scores={Dialog=806}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.22"}]}
tellraw @s[scores={Dialog=862}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.23"}]}
tellraw @s[scores={Dialog=902}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.24"}]}
execute if entity @s[scores={Dialog=903}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] at @s run teleport @s ~ ~ ~ facing -1998 51 -601
execute if entity @s[scores={Dialog=904..939}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=939}] if entity @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost] run kill @e[x=-1997.5,y=51,z=-600.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=920}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!ghost,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -2000 51 -598
execute if entity @s[scores={Dialog=921..957}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!ghost,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=940}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -2000 51 -598
execute if entity @s[scores={Dialog=941..957}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=ghost,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=957}] if entity @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] run kill @e[x=-1999.5,y=51,z=-597.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=958}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=959..1017}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=958}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=959..1032}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1017}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] ~ -100 ~
execute if entity @s[scores={Dialog=1017}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=unicorn] add dead
execute if entity @s[scores={Dialog=1032}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] ~ -100 ~
execute if entity @s[scores={Dialog=1032}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=!unicorn] add dead
tellraw @s[scores={Dialog=957}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.25"}]}
tellraw @s[scores={Dialog=973}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.26"}]}
tellraw @s[scores={Dialog=997}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.27"}]}
tellraw @s[scores={Dialog=1029}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.28"}]}
execute if entity @s[scores={Dialog=1061}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1999 51 -585
execute if entity @s[scores={Dialog=1062..1097}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1097}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add dead
stopsound @s[scores={Dialog=1097}] music
scoreboard players set @s[scores={Dialog=1097}] MusicType 1
scoreboard players set @s[scores={Dialog=1097}] Music 0
execute if entity @s[scores={Dialog=1097..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1097}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.29"}]}
tellraw @s[scores={Dialog=1129}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.30"}]}
tellraw @s[scores={Dialog=1249}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.31"}]}
tellraw @s[scores={Dialog=1289}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl_battle.32"}]}
tag @s[scores={Dialog=1314}] remove dialog_infinity_vs_gillgirl_battle
tag @s[scores={Dialog=1314}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=1314}] DialogNr
scoreboard players set @s[scores={Dialog=1314}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744