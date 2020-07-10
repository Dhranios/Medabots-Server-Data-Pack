execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity seaslug_returns
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 48 59 46 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 47 59 43 run function medabots_server:spawn_entities/cutscene/seaslug
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=seaslug,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..1199}] at @e[tag=seaslug,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=seaslug,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 47 59 47 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.5"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.6"}]}
tellraw @s[scores={Dialog=304}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.7"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.8"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.9"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.10"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.11"}]}
tellraw @s[scores={Dialog=576}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.12"}]}
tellraw @s[scores={Dialog=608}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.13"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.14"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.15"}]}
tellraw @s[scores={Dialog=808}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.16"}]}
tellraw @s[scores={Dialog=872}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.17"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.18"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.19"}]}
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.20"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.21"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.22"}]}
tellraw @s[scores={Dialog=1176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.seaslug","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.23"}]}
execute if entity @s[scores={Dialog=1200}] as @e[tag=seaslug,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 46 59 0
execute if entity @s[scores={Dialog=1200}] run tag @e[tag=seaslug,tag=this_dialog,limit=1] add walking
tellraw @s[scores={Dialog=1240}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.24"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.25"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.26"}]}
tellraw @s[scores={Dialog=1360}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.seaslug_returns.27"}]}
tag @s[scores={Dialog=1400}] remove dialog_infinity_seaslug_returns
scoreboard players set @s[scores={Dialog=1400}] MusicType 1
scoreboard players set @s[scores={Dialog=1400}] Music 0
scoreboard players reset @s[scores={Dialog=1400}] DialogNr
scoreboard players set @s[scores={Dialog=1400}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog