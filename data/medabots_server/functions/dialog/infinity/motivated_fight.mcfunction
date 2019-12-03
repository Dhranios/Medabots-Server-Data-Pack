execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity motivated_fight
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -562 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -565 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -564 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1..1661}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1641}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1662..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.1"}]}
tellraw @s[scores={Dialog=20}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.2"}]}
tellraw @s[scores={Dialog=36}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.3","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.4"}]}
tellraw @s[scores={Dialog=108}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.5"}]}
tellraw @s[scores={Dialog=148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.6"}]}
tellraw @s[scores={Dialog=220}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.7"}]}
tellraw @s[scores={Dialog=284}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.8"}]}
tellraw @s[scores={Dialog=316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.9"}]}
tellraw @s[scores={Dialog=332}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.10"}]}
tellraw @s[scores={Dialog=404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.11"}]}
tellraw @s[scores={Dialog=436}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.12"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.13"}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.14"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.15"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.16"}]}
tellraw @s[scores={Dialog=696}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.17"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.18"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.19"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.20"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.21"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.22"}]}
tellraw @s[scores={Dialog=940}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.23"}]}
tellraw @s[scores={Dialog=980}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.24"}]}
tellraw @s[scores={Dialog=1012}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.25"}]}
tellraw @s[scores={Dialog=1116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.26"}]}
tellraw @s[scores={Dialog=1132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.27"}]}
tellraw @s[scores={Dialog=1148}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.28"}]}
tellraw @s[scores={Dialog=1156}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.29"}]}
tellraw @s[scores={Dialog=1164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.30"}]}
tellraw @s[scores={Dialog=1212}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.31"}]}
tellraw @s[scores={Dialog=1244}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.32"}]}
tellraw @s[scores={Dialog=1308}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.33"}]}
tellraw @s[scores={Dialog=1316}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.34"}]}
tellraw @s[scores={Dialog=1348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.35"}]}
tellraw @s[scores={Dialog=1404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.36"}]}
tellraw @s[scores={Dialog=1428}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.37"}]}
tellraw @s[scores={Dialog=1452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.38"}]}
tellraw @s[scores={Dialog=1514}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.39"}]}
tellraw @s[scores={Dialog=1522}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.40"}]}
tellraw @s[scores={Dialog=1546}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.41"}]}
tellraw @s[scores={Dialog=1594}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.42"}]}
tellraw @s[scores={Dialog=1618}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.43"}]}
execute if entity @s[scores={Dialog=1642}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1642}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1643..1722}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1642}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1642}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1643..1716}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1716}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=1722}] as @e[tag=spyke,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=1662}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.44"}]}
tellraw @s[scores={Dialog=1750}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.45"}]}
tellraw @s[scores={Dialog=1814}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.46"}]}
tellraw @s[scores={Dialog=1846}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.47"}]}
tellraw @s[scores={Dialog=1868}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.48"}]}
tellraw @s[scores={Dialog=1892}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.motivated_fight.49"}]}
tag @s[scores={Dialog=1900}] remove dialog_infinity_motivated_fight
scoreboard players set @s[scores={Dialog=1900}] MusicType 1
scoreboard players set @s[scores={Dialog=1900}] Music 0
scoreboard players reset @s[scores={Dialog=1900}] DialogNr
scoreboard players set @s[scores={Dialog=1900}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog