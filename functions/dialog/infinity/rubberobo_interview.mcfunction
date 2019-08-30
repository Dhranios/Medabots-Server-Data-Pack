execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_interview
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1815 51 -489 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1811 51 -484 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1814 51 -484 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3224623}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8153946}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14015190}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1814,y=51,z=-484,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] positioned -1770 51 -446 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -25 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 90
teleport @s[scores={Dialog=1}] -1813 51 -489 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.1"}]}
execute if entity @s[scores={Dialog=40..119}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.2"}]}
execute if entity @s[scores={Dialog=120}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.3"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.4"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.5"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.7"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.8"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.9"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.10"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.11"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.12"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.13"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.14"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.15"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.16"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.17"}]}
execute if entity @s[scores={Dialog=840..1020}] as @e[tag=kid,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.18"}]}
execute if entity @s[scores={Dialog=696}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1810 51 -446
execute if entity @s[scores={Dialog=697..896}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=896}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
stopsound @s[scores={Dialog=856}] music
scoreboard players set @s[scores={Dialog=856}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=856}] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=856..927}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=856..1020}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.19"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.20"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.21"}]}
execute if entity @s[scores={Dialog=928..1119}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.22"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.23","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1008}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.24"}]}
execute if entity @s[scores={Dialog=1008}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1813 51 -443
execute if entity @s[scores={Dialog=1009..1021}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1021}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=1021}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.25"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.26"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.27"}]}
stopsound @s[scores={Dialog=1120}] music
scoreboard players set @s[scores={Dialog=1120}] MusicType 1
scoreboard players set @s[scores={Dialog=1120}] Music 0
execute if entity @s[scores={Dialog=1120}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.28"}]}
execute if entity @s[scores={Dialog=1136..1279}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.29"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.30"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.31"}]}
execute if entity @s[scores={Dialog=1280}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1813 51 -443
execute if entity @s[scores={Dialog=1281..1470}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1280}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1813 51 -443
execute if entity @s[scores={Dialog=1281..1470}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=1470}] remove dialog_infinity_rubberobo_interview
scoreboard players reset @s[scores={Dialog=1470}] DialogNr
scoreboard players set @s[scores={Dialog=1470}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1,Dialog=..855}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..855}] Music 502
playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1,Dialog=856..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=856..}] Music 744