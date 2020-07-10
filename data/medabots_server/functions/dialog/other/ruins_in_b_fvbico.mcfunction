execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other ruins_in_b_fvbico
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 44 59 46 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 45 59 52 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] positioned 45 59 52 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_1
execute if entity @s[scores={Dialog=1}] positioned 47 59 52 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] positioned 47 59 52 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_2
execute if entity @s[scores={Dialog=1..1054}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..143}] at @e[tag=rubberobo_2,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo_2,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 46 59 46 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.3"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.4"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.5"}]}
execute if entity @s[scores={Dialog=144}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.6"}]}
execute if entity @s[scores={Dialog=176}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.7"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.8"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.9"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.10"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.11"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.12"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.13"}]}
execute if entity @s[scores={Dialog=356}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=356..703}] at @e[tag=rubberobo_2,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo_2,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.14"}]}
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.15"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.16"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.17"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.18"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.19"}]}
tellraw @s[scores={Dialog=504}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.20"}]}
tellraw @s[scores={Dialog=592}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.21"}]}
tellraw @s[scores={Dialog=664}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.22"}]}
execute if entity @s[scores={Dialog=704}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.23"}]}
execute if entity @s[scores={Dialog=752}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.24"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.25"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.26"}]}
execute if entity @s[scores={Dialog=856}] as @e[tag=rubberobo,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing 45 59 0
execute if entity @s[scores={Dialog=856}] as @e[tag=rubberobo,tag=this_dialog] run tag @s add running
execute if entity @s[scores={Dialog=1055}] run teleport @e[tag=rubberobo,tag=this_dialog] ~ -100 ~
execute if entity @s[scores={Dialog=1055}] run tag @e[tag=rubberobo,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=1055..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.27"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.28"}]}
tellraw @s[scores={Dialog=1112}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.29"}]}
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.30"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.31"}]}
tellraw @s[scores={Dialog=1296}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.32"}]}
tellraw @s[scores={Dialog=1344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.33"}]}
tellraw @s[scores={Dialog=1368}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico.34"}]}
scoreboard players set @s[scores={Dialog=1472}] MusicType 1
scoreboard players set @s[scores={Dialog=1472}] Music 0
tag @s[scores={Dialog=1472}] remove dialog_other_ruins_in_b_fvbico
scoreboard players reset @s[scores={Dialog=1472}] DialogNr
scoreboard players set @s[scores={Dialog=1472}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog