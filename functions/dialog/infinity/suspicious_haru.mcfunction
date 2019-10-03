execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity suspicious_haru
stopsound @s[scores={Dialog=1}] music
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -375 55 -37 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=erika,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..531}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.5"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.6"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.7"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.8"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.9"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.10"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.11"}]}
tellraw @s[scores={Dialog=480}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.12"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.13"}]}
execute if entity @s[scores={Dialog=532}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.14"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.15"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.16"}]}
tellraw @s[scores={Dialog=632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.17"}]}
execute if entity @s[scores={Dialog=656..1087}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.18"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.19"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.20"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.21"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.22"}]}
execute if entity @s[scores={Dialog=1088}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.23"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.24"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.25"}]}
execute if entity @s[scores={Dialog=1296..1735}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.26"}]}
tellraw @s[scores={Dialog=1312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.27"}]}
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.28"}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.29"}]}
tellraw @s[scores={Dialog=1424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.30"}]}
tellraw @s[scores={Dialog=1496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.31"}]}
tellraw @s[scores={Dialog=1504}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.32"}]}
tellraw @s[scores={Dialog=1512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.33"}]}
stopsound @s[scores={Dialog=1528}] music
scoreboard players set @s[scores={Dialog=1528}] Music 0
tellraw @s[scores={Dialog=1528}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.34"}]}
tellraw @s[scores={Dialog=1544}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.35"}]}
tellraw @s[scores={Dialog=1592}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.36"}]}
tellraw @s[scores={Dialog=1672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.37"}]}
tellraw @s[scores={Dialog=1712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.38"}]}
execute if entity @s[scores={Dialog=1736}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.39"}]}
tellraw @s[scores={Dialog=1832}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.40"}]}
tellraw @s[scores={Dialog=1888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.41"}]}
tellraw @s[scores={Dialog=1920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.42"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.43"}]}
execute if entity @s[scores={Dialog=2068..2535}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.44"}]}
tellraw @s[scores={Dialog=2296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.45"}]}
tellraw @s[scores={Dialog=2312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.46"}]}
tellraw @s[scores={Dialog=2520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.47"}]}
execute if entity @s[scores={Dialog=2536}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.48"}]}
tellraw @s[scores={Dialog=2608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.49"}]}
tellraw @s[scores={Dialog=2672}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.50"}]}
execute if entity @s[scores={Dialog=2692..3571}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.51"}]}
tellraw @s[scores={Dialog=2736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.52"}]}
tellraw @s[scores={Dialog=2792}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.53"}]}
tellraw @s[scores={Dialog=2808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.54"}]}
tellraw @s[scores={Dialog=2888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.55"}]}
tellraw @s[scores={Dialog=3016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.56"}]}
tellraw @s[scores={Dialog=3080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.57"}]}
tellraw @s[scores={Dialog=3160}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.58"}]}
tellraw @s[scores={Dialog=3192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.59"}]}
tellraw @s[scores={Dialog=3304}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.60"}]}
tellraw @s[scores={Dialog=3368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.61"}]}
tellraw @s[scores={Dialog=3456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.62"}]}
tellraw @s[scores={Dialog=3488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.63"}]}
tellraw @s[scores={Dialog=3552}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.64"}]}
execute if entity @s[scores={Dialog=3572}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.65"}]}
tellraw @s[scores={Dialog=3688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.66"}]}
tellraw @s[scores={Dialog=3744}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.67"}]}
execute if entity @s[scores={Dialog=3776..3879}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3776}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.68"}]}
tellraw @s[scores={Dialog=3864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.69"}]}
execute if entity @s[scores={Dialog=3880}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=3880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.70"}]}
tellraw @s[scores={Dialog=3984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.71"}]}
tellraw @s[scores={Dialog=4048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.72"}]}
tellraw @s[scores={Dialog=4064}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.73"}]}
tellraw @s[scores={Dialog=4136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.74"}]}
tellraw @s[scores={Dialog=4176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.75"}]}
execute if entity @s[scores={Dialog=4196..4263}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=4216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:dialog.infinity.suspicious_haru.76"}]}
execute if entity @s[scores={Dialog=4264}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=4264}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=4265..}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=4345}] remove dialog_infinity_suspicious_haru
stopsound @s[scores={Dialog=4345}] music
scoreboard players set @s[scores={Dialog=4345}] MusicType 1
scoreboard players set @s[scores={Dialog=4345}] Music 0
scoreboard players reset @s[scores={Dialog=4345}] DialogNr
scoreboard players set @s[scores={Dialog=4345}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.erika music @s[scores={Music=0,MusicType=-1,Dialog=..1527}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=..1527}] Music 502
playsound medabots_server:music.conspiracy music @s[scores={Music=0,MusicType=-1,Dialog=1528..}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1,Dialog=1528..}] Music 873