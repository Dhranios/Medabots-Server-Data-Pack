execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 39
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other ruins_out_e_fvbico
execute if entity @s[scores={Dialog=1}] positioned -1894 51 -491 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1890 51 -492 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..739}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add dancing
teleport @s[scores={Dialog=1}] -1892 51 -489 -145 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.3"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.4"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.5"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.6"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.7"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.8"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.9"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.10"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.11"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.12"}]}
execute if entity @s[scores={Dialog=464}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] remove dancing
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.13"}]}
tellraw @s[scores={Dialog=492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.14"}]}
tellraw @s[scores={Dialog=532}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.15"}]}
tellraw @s[scores={Dialog=580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.16"}]}
tellraw @s[scores={Dialog=604}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.17"}]}
execute if entity @s[scores={Dialog=660..739}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=660}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.18"}]}
tellraw @s[scores={Dialog=708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.19"}]}
execute if entity @s[scores={Dialog=740..1236}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=740..1236}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=740}] MusicType 32
scoreboard players set @s[scores={Dialog=740}] Music 0
execute if entity @s[scores={Dialog=740}] positioned -1892 51 -533 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=740}] positioned -1891 51 -533 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=740}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1892 51 -501
execute if entity @s[scores={Dialog=740}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1891 51 -501
execute if entity @s[scores={Dialog=740}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=740}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=740}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.20"}]}
tellraw @s[scores={Dialog=764}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.21"}]}
tellraw @s[scores={Dialog=788}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.22"}]}
tellraw @s[scores={Dialog=802}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.23"}]}
tellraw @s[scores={Dialog=850}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.24"}]}
execute if entity @s[scores={Dialog=891}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=891}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=891..1229}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=891..1229}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=906}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.25"}]}
tellraw @s[scores={Dialog=930}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.26"}]}
tellraw @s[scores={Dialog=994}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.27"}]}
tellraw @s[scores={Dialog=1058}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.28"}]}
tellraw @s[scores={Dialog=1082}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.29"}]}
execute if entity @s[scores={Dialog=1086}] positioned -1892 51 -534 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1086}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1892 51 -499
execute if entity @s[scores={Dialog=1086}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=1102}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.30"}]}
tellraw @s[scores={Dialog=1122}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.31"}]}
tellraw @s[scores={Dialog=1202}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.32"}]}
execute if entity @s[scores={Dialog=1230}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1893 51 -500
execute if entity @s[scores={Dialog=1230}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1890 51 -500
execute if entity @s[scores={Dialog=1230}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1230}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1236}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1236}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1236..1609}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1236..1737}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1250}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=1250..1593}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1250}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.33"}]}
tellraw @s[scores={Dialog=1290}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.34"}]}
tellraw @s[scores={Dialog=1346}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.35"}]}
tellraw @s[scores={Dialog=1378}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.36"}]}
tellraw @s[scores={Dialog=1398}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.37"}]}
tellraw @s[scores={Dialog=1478}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.38"}]}
tellraw @s[scores={Dialog=1498}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.39"}]}
tellraw @s[scores={Dialog=1554}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.40"}]}
execute if entity @s[scores={Dialog=1594}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1594}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.41"}]}
execute if entity @s[scores={Dialog=1610}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1610}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.42"}]}
tellraw @s[scores={Dialog=1658}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.43"}]}
tellraw @s[scores={Dialog=1678}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.44"}]}
tellraw @s[scores={Dialog=1718}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.45"}]}
tellraw @s[scores={Dialog=1718}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.46"}]}
tellraw @s[scores={Dialog=1718}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.47"}]}
execute if entity @s[scores={Dialog=1738}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1892 51 -512
execute if entity @s[scores={Dialog=1738}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1893 51 -534
execute if entity @s[scores={Dialog=1738}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1892 51 -514
execute if entity @s[scores={Dialog=1738}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1738}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1738}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=1768}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1893 51 -534
execute if entity @s[scores={Dialog=1778}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1893 51 -534
execute if entity @s[scores={Dialog=1818}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=1818}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=1820}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=1758}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.48"}]}
tellraw @s[scores={Dialog=1774}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.49"}]}
execute if entity @s[scores={Dialog=1782..1933}] at @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=max,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1782}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.50"}]}
execute if entity @s[scores={Dialog=1790..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1790}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.51"}]}
tellraw @s[scores={Dialog=1798}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.52"}]}
tellraw @s[scores={Dialog=1854}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.53"}]}
tellraw @s[scores={Dialog=1878}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.54"}]}
tellraw @s[scores={Dialog=1926}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_out_e_fvbico.55"}]}
execute if entity @s[scores={Dialog=1934}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1893 51 -534
execute if entity @s[scores={Dialog=1934}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=2132}] remove dialog_other_ruins_out_e_fvbico
scoreboard players set @s[scores={Dialog=2132}] MusicType 1
scoreboard players set @s[scores={Dialog=2132}] Music 0
scoreboard players reset @s[scores={Dialog=2132}] DialogNr
scoreboard players set @s[scores={Dialog=2132}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog