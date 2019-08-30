execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_squidguts_battle
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -1995 51 -560 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -556 run function medabots_server:spawn_entities/cutscene/squidguts
execute if entity @s[scores={Dialog=1..3349}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..659}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.2"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.3"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.6"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.7"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.8"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.9"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.10"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.11","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.12"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.13"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.14"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.15"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.16"}]}
execute if entity @s[scores={Dialog=640}] positioned -1997 51 -540 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=641}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1995 51 -556
execute if entity @s[scores={Dialog=642..717}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=660..1613}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=718..3273}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @e[tag=squidguts,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=718}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.17"}]}
tellraw @s[scores={Dialog=734}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.18"}]}
tellraw @s[scores={Dialog=774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.19"}]}
tellraw @s[scores={Dialog=886}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.20"}]}
tellraw @s[scores={Dialog=918}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.21"}]}
tellraw @s[scores={Dialog=950}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.22"}]}
tellraw @s[scores={Dialog=1022}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.23"}]}
tellraw @s[scores={Dialog=1062}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.24"}]}
tellraw @s[scores={Dialog=1086}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.25"}]}
tellraw @s[scores={Dialog=1198}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.26"}]}
tellraw @s[scores={Dialog=1366}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.27"}]}
tellraw @s[scores={Dialog=1462}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.28"}]}
tellraw @s[scores={Dialog=1470}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.29"}]}
tellraw @s[scores={Dialog=1574}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.30"}]}
execute if entity @s[scores={Dialog=1614..2841}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1646}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.31"}]}
tellraw @s[scores={Dialog=1694}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.32"}]}
tellraw @s[scores={Dialog=1758}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.33"}]}
tellraw @s[scores={Dialog=1790}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.34"}]}
tellraw @s[scores={Dialog=1910}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.35"}]}
tellraw @s[scores={Dialog=1942}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.36"}]}
tellraw @s[scores={Dialog=1950}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.37"}]}
tellraw @s[scores={Dialog=1982}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.38"}]}
tellraw @s[scores={Dialog=2054}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.39"}]}
tellraw @s[scores={Dialog=2118}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.40"}]}
tellraw @s[scores={Dialog=2262}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.41"}]}
tellraw @s[scores={Dialog=2294}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.42"}]}
tellraw @s[scores={Dialog=2326}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.43"}]}
tellraw @s[scores={Dialog=2350}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.44"}]}
tellraw @s[scores={Dialog=2374}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.45"}]}
tellraw @s[scores={Dialog=2414}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.46"}]}
tellraw @s[scores={Dialog=2518}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.47"}]}
tellraw @s[scores={Dialog=2538}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.48"}]}
tellraw @s[scores={Dialog=2610}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.49"}]}
tellraw @s[scores={Dialog=2682}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.50"}]}
tellraw @s[scores={Dialog=2690}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.51"}]}
tellraw @s[scores={Dialog=2762}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.52"}]}
execute if entity @s[scores={Dialog=2842..3273}] at @e[tag=squidguts,tag=this_dialog,limit=1] facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=squidguts,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2842}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.53"}]}
tellraw @s[scores={Dialog=2874}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.54"}]}
tellraw @s[scores={Dialog=2978}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.55"}]}
tellraw @s[scores={Dialog=3082}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.56"}]}
tellraw @s[scores={Dialog=3098}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.57"}]}
tellraw @s[scores={Dialog=3146}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.58"}]}
tellraw @s[scores={Dialog=3170}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.59"}]}
tellraw @s[scores={Dialog=3194}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.60"}]}
tellraw @s[scores={Dialog=3218}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.squidguts"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.61"}]}
execute if entity @s[scores={Dialog=3274}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=3275..3350}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3350}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=3350}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=3274}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=3275..3350}] as @e[tag=squidguts,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3350}] run teleport @e[tag=squidguts,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=3290},tag=!already_gave_items] run summon minecraft:item -1998 51 -553 {PickupDelay:212s,Tags:["cutscene"],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=3290}] run data modify entity @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=3290}] run data modify entity @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
execute if entity @s[scores={Dialog=3305},tag=!already_gave_items] run summon minecraft:item -1996 51 -550 {PickupDelay:197s,Tags:["cutscene"],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:9,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.knight_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.knight_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:knight_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},Tags:["hostile","do_not_teleport"],Age:-32768s,Invulnerable:1b}
execute at @s as @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=3305}] run data modify entity @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1] Owner.L set from entity @s UUIDLeast
execute if entity @s[scores={Dialog=3305}] run data modify entity @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1] Owner.M set from entity @s UUIDMost
stopsound @s[scores={Dialog=3350}] music
scoreboard players set @s[scores={Dialog=3350}] MusicType 1
scoreboard players set @s[scores={Dialog=3350}] Music 0
execute if entity @s[scores={Dialog=3350..3900}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3350}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.62"}]}
tellraw @s[scores={Dialog=3358}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.63"}]}
tellraw @s[scores={Dialog=3382}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.64"}]}
execute if entity @s[scores={Dialog=3454},tag=already_gave_items] run scoreboard players set @s Dialog 4030
tellraw @s[scores={Dialog=3454}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.65"}]}
tellraw @s[scores={Dialog=3462}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.66"}]}
tag @s[scores={Dialog=3502}] add already_gave_items
execute if entity @s[scores={Dialog=3502..3901}] unless entity @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 3901
execute if entity @s[scores={Dialog=3502..3901}] unless entity @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1] run scoreboard players set @s Dialog 3901
execute if entity @s[scores={Dialog=3901..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
stopsound @s[scores={Dialog=3901}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=3901}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=3901}] MusicType -1
scoreboard players set @s[scores={Dialog=3901}] Music 62
execute if entity @s[scores={Dialog=3901}] run data merge entity @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=3901}] run data merge entity @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1] {PickupDelay:1000s}
execute if entity @s[scores={Dialog=3901}] positioned -1997 51 -540 run function medabots_server:spawn_entities/cutscene/rubberobo
execute at @s as @e[x=-1997,y=51,z=-540,tag=rubberobo,distance=..1] if entity @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1] run tag @s add knight
execute at @s as @e[x=-1997,y=51,z=-540,tag=rubberobo,distance=..1] if entity @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1] run tag @s add spider
execute if entity @s[scores={Dialog=3902}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight] at @s run teleport @s ~ ~ ~ facing -1996 51 -550
execute if entity @s[scores={Dialog=3903..3950}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3950}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight] run kill @e[x=-1995.5,y=51,z=-549.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=3902}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider,tag=!knight] at @s run teleport @s ~ ~ ~ facing -1998 51 -553
execute if entity @s[scores={Dialog=3903..3965}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider,tag=!knight] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3965}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider,tag=!knight] run kill @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1]
execute if entity @s[scores={Dialog=3950}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=spider] at @s run teleport @s ~ ~ ~ facing -1998 51 -553
execute if entity @s[scores={Dialog=3951..3967}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=spider] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=3967}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=spider] run kill @e[x=-1997.5,y=51,z=-552.5,type=minecraft:item,distance=..0.7,limit=1]
tellraw @s[scores={Dialog=3950}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_squidguts_battle.67"}]}
execute if entity @s[scores={Dialog=3968}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=3969..4030}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4030}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider] ~ -100 ~
execute if entity @s[scores={Dialog=4030}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=spider] add dead
execute if entity @s[scores={Dialog=3968}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=!spider] at @s run teleport @s ~ ~ ~ facing -1997 51 -540
execute if entity @s[scores={Dialog=3969..4015}] as @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=!spider] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=4015}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=!spider] ~ -100 ~
execute if entity @s[scores={Dialog=4015}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1,tag=knight,tag=!spider] add dead
tag @s[scores={Dialog=4030}] remove dialog_infinity_vs_squidguts_battle
stopsound @s[scores={Dialog=4030,MusicType=-1}] music
scoreboard players set @s[scores={Dialog=4030,MusicType=-1}] Music 0
scoreboard players set @s[scores={Dialog=4030,MusicType=-1}] MusicType 1
tag @s[scores={Dialog=4030}] remove already_gave_items
scoreboard players reset @s[scores={Dialog=4030}] DialogNr
scoreboard players set @s[scores={Dialog=4030}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744