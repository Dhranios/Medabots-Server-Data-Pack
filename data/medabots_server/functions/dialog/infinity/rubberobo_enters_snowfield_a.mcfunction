execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_snowfield_a
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1619 51 -217 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1622 51 -219 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1620 51 -216 145 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.1"}]}
execute if entity @s[scores={Dialog=16..351}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.2"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.4"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.5"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.6"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.7"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.8"}]}
tellraw @s[scores={Dialog=168}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.9"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.10"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.11"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.12"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.13"}]}
tellraw @s[scores={Dialog=328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.14"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.15"}]}
execute if entity @s[scores={Dialog=352..535}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.16"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.17"}]}
tellraw @s[scores={Dialog=432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.18"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.19"}]}
execute if entity @s[scores={Dialog=536}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1621 51 -247
execute if entity @s[scores={Dialog=536}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=537..666}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=666}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=666}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=596}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.20"}]}
tellraw @s[scores={Dialog=624}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_snowfield_a.21","with":[{"selector":"@s"}]}]}
scoreboard players set @s[scores={Dialog=666}] MusicType 1
scoreboard players set @s[scores={Dialog=666}] Music 0
tag @s[scores={Dialog=666}] remove dialog_infinity_rubberobo_enters_snowfield_a
scoreboard players reset @s[scores={Dialog=666}] DialogNr
scoreboard players set @s[scores={Dialog=666}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog