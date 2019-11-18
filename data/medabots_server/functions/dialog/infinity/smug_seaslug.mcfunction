execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity smug_seaslug
execute if entity @s[scores={Dialog=1}] positioned -415 55 -51 run function medabots_server:spawn_entities/cutscene/metabee
teleport @s[scores={Dialog=1}] -415 55 -53 0 0
teleport @s[scores={Dialog=1..}] -415 55 -53
execute if entity @s[scores={Dialog=1..343}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.4"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.5"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.6"}]}
scoreboard players set @s[scores={Dialog=344}] MusicType 32
scoreboard players set @s[scores={Dialog=344}] Music 0
scoreboard players set @s[scores={Dialog=344}] Jukebox 0
execute if entity @s[scores={Dialog=344}] positioned -412 55 -72 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=344}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=344}] as @e[tag=seaslug,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=345..391}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=392}] as @e[tag=seaslug,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=392}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=344..2012}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.7"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.8"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.9"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.10"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.11"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.12"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.13"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.14"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.15"}]}
tellraw @s[scores={Dialog=792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.16"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.17"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.18"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.19"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.20"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.21"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.22"}]}
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.23"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.24"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.25"}]}
tellraw @s[scores={Dialog=1168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.26"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.27"}]}
tellraw @s[scores={Dialog=1240}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.28"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.29"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.30"}]}
tellraw @s[scores={Dialog=1336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.31"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.32"}]}
tellraw @s[scores={Dialog=1392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.33"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.34"}]}
tellraw @s[scores={Dialog=1440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.35"}]}
tellraw @s[scores={Dialog=1536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.36"}]}
tellraw @s[scores={Dialog=1576}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.37"}]}
tellraw @s[scores={Dialog=1608}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.38"}]}
tellraw @s[scores={Dialog=1632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.39"}]}
tellraw @s[scores={Dialog=1640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.40"}]}
tellraw @s[scores={Dialog=1672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.41"}]}
tellraw @s[scores={Dialog=1728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.42"}]}
execute if entity @s[scores={Dialog=1760}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=1760}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1761..1800}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1801}] as @e[tag=seaslug,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=1801}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.43"}]}
tellraw @s[scores={Dialog=1808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.44"}]}
tellraw @s[scores={Dialog=1856}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.45"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.46"}]}
execute if entity @s[scores={Dialog=1912}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=1912}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1913..1982}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1983}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -20 0
execute if entity @s[scores={Dialog=1984..2013}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
scoreboard players set @s[scores={Dialog=2013}] MusicType 1
scoreboard players set @s[scores={Dialog=2013}] Music 0
execute if entity @s[scores={Dialog=2013..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2014}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.47"}]}
tellraw @s[scores={Dialog=2038}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.48"}]}
tellraw @s[scores={Dialog=2070}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.49"}]}
tellraw @s[scores={Dialog=2086}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.50"}]}
tellraw @s[scores={Dialog=2166}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.smug_seaslug.51"}]}
tag @s[scores={Dialog=2182}] remove dialog_infinity_smug_seaslug
scoreboard players reset @s[scores={Dialog=2182}] DialogNr
scoreboard players set @s[scores={Dialog=2182}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
