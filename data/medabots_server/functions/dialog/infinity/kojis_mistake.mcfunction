execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity kojis_mistake
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -389 55 -106 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -388 55 -107 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..47}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..47}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..47}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.2","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=48}] run summon minecraft:armor_stand -387 55 -95 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","kid_1","cutscene","this_dialog"],Rotation:[-147.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2103051}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:11454154}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:70922}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-387,y=55,z=-95,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=48}] run summon minecraft:armor_stand -386 55 -95 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","kid_2","cutscene","this_dialog"],Rotation:[-140.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2433312}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8351306}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14736603}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-386,y=55,z=-95,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=49}] run tag @e[tag=kid,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=49..108}] as @e[tag=kid,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=108}] as @e[tag=kid,tag=this_dialog] run tag @s remove walking
execute if entity @s[scores={Dialog=48..391}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=48..391}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=48..391}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.3"}]}
execute if entity @s[scores={Dialog=109}] as @e[tag=kid_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=109}] as @e[tag=kid_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.5"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.6"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.7"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.8"}]}
execute if entity @s[scores={Dialog=321}] as @e[tag=kid,tag=this_dialog] at @s run teleport @s ~ ~ ~ -145 0
execute if entity @s[scores={Dialog=321}] run tag @e[tag=kid,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=322..392}] as @e[tag=kid,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.9"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.10"}]}
execute if entity @s[scores={Dialog=392}] run kill @e[tag=kid,tag=this_dialog]
execute if entity @s[scores={Dialog=392..1551}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=392..1519}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=392..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.11"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.12"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.13"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.14"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.15"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.16"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.17"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.18"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.19"}]}
tellraw @s[scores={Dialog=960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.20"}]}
tellraw @s[scores={Dialog=1112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.21"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.22"}]}
tellraw @s[scores={Dialog=1304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.23"}]}
tellraw @s[scores={Dialog=1320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.24"}]}
tellraw @s[scores={Dialog=1344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.25"}]}
tellraw @s[scores={Dialog=1432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.26"}]}
tellraw @s[scores={Dialog=1496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.27"}]}
execute if entity @s[scores={Dialog=1520..1791}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.28"}]}
execute if entity @s[scores={Dialog=1552..1991}] as @e[tag=koji,tag=this_dialog,limit=1] at @s facing entity @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.29"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.30"}]}
tellraw @s[scores={Dialog=1624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.31"}]}
tellraw @s[scores={Dialog=1736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.32"}]}
execute if entity @s[scores={Dialog=1792..2567}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.33"}]}
tellraw @s[scores={Dialog=1872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.34"}]}
tellraw @s[scores={Dialog=1896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.35"}]}
tellraw @s[scores={Dialog=1944}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.36"}]}
execute if entity @s[scores={Dialog=1992..2567}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.37"}]}
tellraw @s[scores={Dialog=2056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.38"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.39"}]}
tellraw @s[scores={Dialog=2112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.40"}]}
tellraw @s[scores={Dialog=2184}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.41"}]}
tellraw @s[scores={Dialog=2256}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.42"}]}
tellraw @s[scores={Dialog=2352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.43"}]}
tellraw @s[scores={Dialog=2432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.44"}]}
tellraw @s[scores={Dialog=2472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.45"}]}
tellraw @s[scores={Dialog=2488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.46"}]}
tellraw @s[scores={Dialog=2528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.47"}]}
tellraw @s[scores={Dialog=2552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks"},{"translate":"medabots_server:dialog.infinity.kojis_mistake.48"}]}
execute if entity @s[scores={Dialog=2568}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -374 55 -111
execute if entity @s[scores={Dialog=2568}] run tag @e[tag=koji,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2569..2636}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2568}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -374 55 -111
execute if entity @s[scores={Dialog=2568}] run tag @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2569..2636}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2637}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -374 55 -119
execute if entity @s[scores={Dialog=2637}] as @e[tag=roks,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -374 55 -119
execute if entity @s[scores={Dialog=2638..}] as @e[tag=koji,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2638..}] as @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=2698}] MusicType 1
scoreboard players set @s[scores={Dialog=2698}] Music 0
tag @s[scores={Dialog=2698}] remove dialog_infinity_kojis_mistake
scoreboard players reset @s[scores={Dialog=2698}] DialogNr
scoreboard players set @s[scores={Dialog=2698}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog