execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity erikas_challenge
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -388 55 15 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -391 55 14 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -388 55 13 70 0
teleport @s[scores={Dialog=2..1599}] -388 55 13
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.4"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.5"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.6"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.7"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.8"}]}
execute if entity @s[scores={Dialog=344}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.9"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.10"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.11"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.12"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.13"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.14"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.15"}]}
execute if entity @s[scores={Dialog=620}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.16"}]}
tellraw @s[scores={Dialog=688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.17"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.18"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.19"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.20"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.21"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.22"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.23"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.24"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.25"}]}
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.26"}]}
tellraw @s[scores={Dialog=1224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.27"}]}
execute if entity @s[scores={Dialog=1244}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.28"}]}
execute if entity @s[scores={Dialog=1328}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.29"}]}
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.30"}]}
tellraw @s[scores={Dialog=1464}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.31"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.32"}]}
execute if entity @s[scores={Dialog=1508}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.33"}]}
execute if entity @s[scores={Dialog=1572}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1600}] positioned -419 55 -26 run function medabots_server:spawn_entities/cutscene/max
execute if entity @s[scores={Dialog=1600}] positioned -418 55 -23 run function medabots_server:spawn_entities/cutscene/brass
execute if entity @s[scores={Dialog=1600}] as @e[tag=erika,tag=this_dialog,limit=1] positioned -421 55 -23 facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1600}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1600}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=1600}] MusicType 39
scoreboard players set @s[scores={Dialog=1600}] Music 0
execute if entity @s[scores={Dialog=1600}] run fill -426 57 -29 -427 60 -30 minecraft:orange_stained_glass
execute if entity @s[scores={Dialog=1600}] run setblock -427 59 -30 minecraft:air
teleport @s[scores={Dialog=1600..1967}] -427 59 -30 facing -421 55 -24
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.34"}]}
tellraw @s[scores={Dialog=1624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.35"}]}
tellraw @s[scores={Dialog=1672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.36"}]}
tellraw @s[scores={Dialog=1680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.37"}]}
execute if entity @s[scores={Dialog=1704}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.38"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.39"}]}
tellraw @s[scores={Dialog=1784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.40"}]}
tellraw @s[scores={Dialog=1832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.41"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.brass"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.42"}]}
tellraw @s[scores={Dialog=1888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.max"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.43"}]}
execute if entity @s[scores={Dialog=1928}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -412 55 -40
execute if entity @s[scores={Dialog=1928}] run tag @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1929..1968}] as @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1928}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -412 55 -40
execute if entity @s[scores={Dialog=1928}] run tag @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1929..1968}] as @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1968}] run kill @e[tag=max,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1968}] run kill @e[tag=brass,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1968}] as @e[tag=erika,tag=this_dialog,limit=1] positioned -391 55 14 facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=1968}] MusicType 37
scoreboard players set @s[scores={Dialog=1968}] Music 0
execute if entity @s[scores={Dialog=1968}] run fill -426 57 -29 -427 60 -30 minecraft:air
teleport @s[scores={Dialog=1968}] -388 55 13 70 0
teleport @s[scores={Dialog=1969..}] -388 55 13
tellraw @s[scores={Dialog=1968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.44"}]}
tellraw @s[scores={Dialog=2008}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.45"}]}
execute if entity @s[scores={Dialog=2028}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2028}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.46"}]}
tellraw @s[scores={Dialog=2100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.47"}]}
tellraw @s[scores={Dialog=2132}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.48"}]}
tellraw @s[scores={Dialog=2148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.49"}]}
tellraw @s[scores={Dialog=2172}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.50"}]}
tellraw @s[scores={Dialog=2188}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.51"}]}
tellraw @s[scores={Dialog=2204}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.52"}]}
execute if entity @s[scores={Dialog=2276}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.53","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=2300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.erikas_challenge.54"}]}
tag @s[scores={Dialog=2332}] remove dialog_infinity_erikas_challenge
scoreboard players set @s[scores={Dialog=2332}] MusicType 1
scoreboard players set @s[scores={Dialog=2332}] Music 0
scoreboard players reset @s[scores={Dialog=2332}] DialogNr
scoreboard players set @s[scores={Dialog=2332}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog