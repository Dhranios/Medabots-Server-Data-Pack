execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity jaxy_is_happy
scoreboard players set @s[scores={Dialog=1}] MusicType 41
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -462 55 -94 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..439}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.4"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.6"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.7"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.8"}]}
execute if entity @s[scores={Dialog=440}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.9"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.10"}]}
tellraw @s[scores={Dialog=552}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.11"}]}
execute if entity @s[scores={Dialog=616..783}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.12"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.13"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.14"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.15"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.16"}]}
tellraw @s[scores={Dialog=728}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.17"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.18"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.19"}]}
execute if entity @s[scores={Dialog=784..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.20"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.21"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.22"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.23"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.24"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.25"}]}
execute if entity @s[scores={Dialog=1088..1487}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.26"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.27"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.28"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.29"}]}
tellraw @s[scores={Dialog=1320}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.30"}]}
tellraw @s[scores={Dialog=1352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.31"}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.32"}]}
tellraw @s[scores={Dialog=1448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.33"}]}
tellraw @s[scores={Dialog=1456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.jaxy"},{"translate":"medabots_server:dialog.infinity.jaxy_is_happy.34"}]}
execute if entity @s[scores={Dialog=1488}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -430 55 -86
execute if entity @s[scores={Dialog=1488}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1489..1648}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1648}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -429 55 -82
execute if entity @s[scores={Dialog=1649..}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=1668}] remove dialog_infinity_jaxy_is_happy
scoreboard players set @s[scores={Dialog=1668}] MusicType 1
scoreboard players set @s[scores={Dialog=1668}] Music 0
scoreboard players reset @s[scores={Dialog=1668}] DialogNr
scoreboard players set @s[scores={Dialog=1668}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog