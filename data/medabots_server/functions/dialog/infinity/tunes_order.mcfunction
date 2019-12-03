execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity tunes_order
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1568 51 -283 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1569 51 -255 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -1569 51 -253 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] positioned -1566 51 -254 run function medabots_server:spawn_entities/cutscene/director_tune
teleport @s[scores={Dialog=1}] -1570 51 -284 0 0
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -70 0
execute if entity @s[scores={Dialog=1}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -110 0
execute if entity @s[scores={Dialog=1}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.1"}]}
execute if entity @s[scores={Dialog=10}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=11..132}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=132}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.4"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.5"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.6"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.7"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.8"}]}
execute if entity @s[scores={Dialog=232..645}] at @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=232..645}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=232..551}] at @e[tag=director_tune,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=director_tune,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.9"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.10"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.11"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.12"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.13"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.14"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.director_tune","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.15"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.16"}]}
execute if entity @s[scores={Dialog=552}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1570 51 -252
execute if entity @s[scores={Dialog=552}] run tag @e[tag=director_tune,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=553..568}] as @e[tag=director_tune,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=568}] run kill @e[tag=director_tune,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=558}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.17"}]}
tellraw @s[scores={Dialog=598}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.18"}]}
tellraw @s[scores={Dialog=614}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.19"}]}
execute if entity @s[scores={Dialog=646}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1570 51 -252
execute if entity @s[scores={Dialog=646}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=647..649}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=649}] run kill @e[tag=karin,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=646}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1570 51 -252
execute if entity @s[scores={Dialog=647..657}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=657}] run kill @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=657}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.tunes_order.20"}]}
tag @s[scores={Dialog=677}] remove dialog_infinity_tunes_order
scoreboard players set @s[scores={Dialog=677}] MusicType 1
scoreboard players set @s[scores={Dialog=677}] Music 0
scoreboard players reset @s[scores={Dialog=677}] DialogNr
scoreboard players set @s[scores={Dialog=677}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog