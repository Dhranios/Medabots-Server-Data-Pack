execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_shrimplips
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1948 51 -566 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1952 51 -566 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1..2225}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1104}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1949 51 -564 125 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.5"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.6"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.7"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.8"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.9"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.10"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.11","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.12"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.13"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.14"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.15"}]}
tellraw @s[scores={Dialog=688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.16"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.17"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.18"}]}
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.19"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.20"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.21"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.22"}]}
tellraw @s[scores={Dialog=960}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.23"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.24"}]}
execute if entity @s[scores={Dialog=1064}] positioned -1949 51 -540 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1064}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1952 51 -563
execute if entity @s[scores={Dialog=1064}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=1065..1173}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1174}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=1105..1853}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1174}] as @e[tag=rubberobo,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.25"}]}
tellraw @s[scores={Dialog=1174}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.26"}]}
tellraw @s[scores={Dialog=1190}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.27"}]}
tellraw @s[scores={Dialog=1230}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.28"}]}
tellraw @s[scores={Dialog=1238}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.29"}]}
tellraw @s[scores={Dialog=1278}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.30"}]}
tellraw @s[scores={Dialog=1342}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.31"}]}
tellraw @s[scores={Dialog=1358}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.32"}]}
tellraw @s[scores={Dialog=1366}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.33"}]}
tellraw @s[scores={Dialog=1430}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.34"}]}
tellraw @s[scores={Dialog=1446}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.35"}]}
tellraw @s[scores={Dialog=1470}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.36"}]}
tellraw @s[scores={Dialog=1486}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.37"}]}
tellraw @s[scores={Dialog=1542}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.38"}]}
tellraw @s[scores={Dialog=1566}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.39"}]}
tellraw @s[scores={Dialog=1638}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.40"}]}
tellraw @s[scores={Dialog=1662}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.41"}]}
tellraw @s[scores={Dialog=1678}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.42"}]}
tellraw @s[scores={Dialog=1710}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.43"}]}
tellraw @s[scores={Dialog=1726}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.44"}]}
tellraw @s[scores={Dialog=1750}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.45"}]}
tellraw @s[scores={Dialog=1830}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.46"}]}
tellraw @s[scores={Dialog=1838}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.47"}]}
tellraw @s[scores={Dialog=1854}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.48"}]}
execute if entity @s[scores={Dialog=1854..2117}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1902}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.49"}]}
tellraw @s[scores={Dialog=1942}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.50"}]}
tellraw @s[scores={Dialog=2046}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.51"}]}
tellraw @s[scores={Dialog=2062}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.52"}]}
tellraw @s[scores={Dialog=2110}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.53"}]}
execute if entity @s[scores={Dialog=2118}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1950 51 -589
execute if entity @s[scores={Dialog=2118}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2119..2226}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2226}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=2118}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1949 51 -540
execute if entity @s[scores={Dialog=2118}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=2119..2227}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=2227}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=2227}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=2226..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2226}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.54"}]}
tellraw @s[scores={Dialog=2306}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.55"}]}
tellraw @s[scores={Dialog=2378}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_shrimplips.56"}]}
tag @s[scores={Dialog=2418}] remove dialog_infinity_vs_shrimplips
scoreboard players set @s[scores={Dialog=2418}] MusicType 1
scoreboard players set @s[scores={Dialog=2418}] Music 0
scoreboard players reset @s[scores={Dialog=2418}] DialogNr
scoreboard players set @s[scores={Dialog=2418}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog