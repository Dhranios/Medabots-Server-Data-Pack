execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity shrimplips_jammy_battle
execute if entity @s[scores={Dialog=1}] positioned 26 59 26 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 24 59 29 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=1..381}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..287}] at @e[tag=shrimplips,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=shrimplips,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 24 59 25 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.2"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.3"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.4"}]}
execute if entity @s[scores={Dialog=288}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=288}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=382}] run kill @e[tag=shrimplips,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=382}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.5"}]}
tellraw @s[scores={Dialog=414}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.6"}]}
execute if entity @s[scores={Dialog=518}] positioned 24 59 49 run function medabots_server:spawn_entities/cutscene/shrimplips
execute if entity @s[scores={Dialog=518}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 29
execute if entity @s[scores={Dialog=518}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=612}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=612}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=518..1038}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=518}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.7"}]}
scoreboard players set @s[scores={Dialog=612}] MusicType 33
scoreboard players set @s[scores={Dialog=612}] Music 0
execute if entity @s[scores={Dialog=612}] positioned 25 59 48 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=612}] positioned 25 59 48 run tag @e[tag=select_corps,tag=this_dialog,distance=..0.7,limit=1] add select_corps_1
execute if entity @s[scores={Dialog=612}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=612}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=645}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=645..997}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=612}] positioned 23 59 48 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=612}] positioned 23 59 48 run tag @e[tag=select_corps,tag=this_dialog,distance=..0.7,limit=1] add select_corps_2
execute if entity @s[scores={Dialog=612}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=612}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=645}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=645..997}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=shrimplips,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=612}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.8"}]}
tellraw @s[scores={Dialog=636}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.9"}]}
tellraw @s[scores={Dialog=684}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.10"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.11"}]}
tellraw @s[scores={Dialog=708}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.12"}]}
tellraw @s[scores={Dialog=732}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.13"}]}
execute if entity @s[scores={Dialog=732}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=732}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=759}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] remove running
tellraw @s[scores={Dialog=770}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.14"}]}
tellraw @s[scores={Dialog=790}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.15"}]}
tellraw @s[scores={Dialog=814}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.16"}]}
tellraw @s[scores={Dialog=878}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.17"}]}
tellraw @s[scores={Dialog=894}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.shrimplips","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.18"}]}
tellraw @s[scores={Dialog=974}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.19"}]}
execute if entity @s[scores={Dialog=998}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=998}] run tag @e[tag=select_corps_1,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1038}] run kill @e[tag=select_corps_1,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=998}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=998}] run tag @e[tag=select_corps_2,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1038}] run kill @e[tag=select_corps_2,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=998}] as @e[tag=shrimplips,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 24 59 49
execute if entity @s[scores={Dialog=998}] run tag @e[tag=shrimplips,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1038}] run kill @e[tag=shrimplips,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1018}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.shrimplips_jammy_battle.20"}]}
tag @s[scores={Dialog=1042}] remove dialog_infinity_shrimplips_jammy_battle
scoreboard players set @s[scores={Dialog=1042}] MusicType 1
scoreboard players set @s[scores={Dialog=1042}] Music 0
scoreboard players reset @s[scores={Dialog=1042}] DialogNr
scoreboard players set @s[scores={Dialog=1042}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog