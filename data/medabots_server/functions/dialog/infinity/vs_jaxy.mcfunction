execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_jaxy
scoreboard players set @s[scores={Dialog=1}] MusicType 40
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1996 51 -563 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1998 51 -579 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1..1399}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.2"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.3"}]}
execute if entity @s[scores={Dialog=40}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=40}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=41..100}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=100}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=101..1409}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=60}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.4"}]}
tellraw @s[scores={Dialog=68}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.5"}]}
tellraw @s[scores={Dialog=84}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.6"}]}
tellraw @s[scores={Dialog=92}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.7"}]}
tellraw @s[scores={Dialog=164}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.8"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.9"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.10"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.11"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.12"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.13"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.14"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.15"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.16","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.17"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.18"}]}
tellraw @s[scores={Dialog=608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.19"}]}
tellraw @s[scores={Dialog=632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.20"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.21"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.22"}]}
tellraw @s[scores={Dialog=744}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.23"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.24"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.25"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.26"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.27"}]}
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.28"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.29"}]}
tellraw @s[scores={Dialog=1096}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.30"}]}
tellraw @s[scores={Dialog=1112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.31"}]}
tellraw @s[scores={Dialog=1128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.32"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.33"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.34"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.35"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.36"}]}
tellraw @s[scores={Dialog=1336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.37"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.38"}]}
tellraw @s[scores={Dialog=1392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.39"}]}
execute if entity @s[scores={Dialog=1400}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1400}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1401..1410}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1410}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=1410..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.40","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1442}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.41"}]}
tellraw @s[scores={Dialog=1474}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.42"}]}
tellraw @s[scores={Dialog=1538}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.43"}]}
tellraw @s[scores={Dialog=1570}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.44"}]}
tellraw @s[scores={Dialog=1610}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.45"}]}
tellraw @s[scores={Dialog=1642}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_jaxy.46"}]}
tag @s[scores={Dialog=1658}] remove dialog_infinity_vs_jaxy
scoreboard players set @s[scores={Dialog=1658}] MusicType 1
scoreboard players set @s[scores={Dialog=1658}] Music 0
scoreboard players reset @s[scores={Dialog=1658}] DialogNr
scoreboard players set @s[scores={Dialog=1658}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog