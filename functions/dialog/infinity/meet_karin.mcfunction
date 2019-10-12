execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity meet_karin
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1540 51 -149 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1537 51 -149 run function medabots_server:spawn_entities/cutscene/neutranurse
execute if entity @s[scores={Dialog=1}] positioned -1537 51 -151 run function medabots_server:spawn_entities/cutscene/karin
teleport @s[scores={Dialog=1}] -1540 51 -151 -90 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1..953}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.2"}]}
tellraw @s[scores={Dialog=46}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.3"}]}
tellraw @s[scores={Dialog=62}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.4"}]}
tellraw @s[scores={Dialog=94}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.5"}]}
tellraw @s[scores={Dialog=126}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.6"}]}
tellraw @s[scores={Dialog=222}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.7"}]}
tellraw @s[scores={Dialog=246}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.8"}]}
tellraw @s[scores={Dialog=294}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.9"}]}
tellraw @s[scores={Dialog=334}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.10"}]}
tellraw @s[scores={Dialog=406}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.11"}]}
tellraw @s[scores={Dialog=430}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_karin.12"}]}
tellraw @s[scores={Dialog=494}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.13"}]}
tellraw @s[scores={Dialog=630}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.14"}]}
tellraw @s[scores={Dialog=694}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.15"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_karin.16"}]}
tellraw @s[scores={Dialog=858}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.17"}]}
tellraw @s[scores={Dialog=874}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.18"}]}
tellraw @s[scores={Dialog=906}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.meet_karin.19"}]}
execute if entity @s[scores={Dialog=954}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=954}] run tag @e[tag=karin,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=955..1105}] as @e[tag=karin,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=954}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=954}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=955..990}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=990}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s remove walking
execute if entity @s[scores={Dialog=990..1100}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=990}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.meet_karin.20"}]}
execute if entity @s[scores={Dialog=1101}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -117
execute if entity @s[scores={Dialog=1101}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run tag @s add walking
execute if entity @s[scores={Dialog=1102..1217}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1106}] as @e[tag=karin,tag=this_dialog,limit=1] run kill @s
tag @s[scores={Dialog=1217}] remove dialog_infinity_meet_karin
scoreboard players set @s[scores={Dialog=1217}] MusicType 1
scoreboard players set @s[scores={Dialog=1217}] Music 0
scoreboard players reset @s[scores={Dialog=1217}] DialogNr
scoreboard players set @s[scores={Dialog=1217}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog