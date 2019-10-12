execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity sloan_goes_elsewhere
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1713 51 -393 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -392 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1..255}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1715 51 -396 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.1"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.2"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.3"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.5"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.6"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.sloan_goes_elsewhere.7"}]}
execute if entity @s[scores={Dialog=256}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -349
execute if entity @s[scores={Dialog=256}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=257..458}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=256}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1715 51 -349
execute if entity @s[scores={Dialog=256}] run tag @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=257..461}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=458}] as @e[tag=sloan,tag=this_dialog,limit=1] run kill @s
scoreboard players set @s[scores={Dialog=461}] MusicType 1
scoreboard players set @s[scores={Dialog=461}] Music 0
tag @s[scores={Dialog=461}] remove dialog_infinity_sloan_goes_elsewhere
scoreboard players reset @s[scores={Dialog=461}] DialogNr
scoreboard players set @s[scores={Dialog=461}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog