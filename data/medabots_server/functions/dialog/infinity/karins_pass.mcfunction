execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity karins_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -393 55 -93 run function medabots_server:spawn_entities/cutscene/neutranurse
execute if entity @s[scores={Dialog=1}] positioned -394 55 -95 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..547}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..547}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_pass.3"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_pass.4"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.karins_pass.5"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.6"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_pass.7"}]}
tellraw @s[scores={Dialog=216}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.8"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.9"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.10"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.11"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_pass.12"}]}
tellraw @s[scores={Dialog=376}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.13"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.14"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_pass.15"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_pass.16"}]}
advancement grant @s[scores={Dialog=464}] only medabots_server:special_items/passes/jungle_d
tellraw @s[scores={Dialog=484}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.17"}]}
tellraw @s[scores={Dialog=524}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.18"}]}
tellraw @s[scores={Dialog=540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_pass.19"}]}
execute if entity @s[scores={Dialog=548}] run kill @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=548}] run kill @e[tag=karin,tag=this_dialog,limit=1]
teleport @s[scores={Dialog=548}] -356 55 -121 -180 0
execute if entity @s[scores={Dialog=548}] run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] -356 55 -123 0 0
execute if entity @s[scores={Dialog=549..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=548}] MusicType 1
scoreboard players set @s[scores={Dialog=548}] Music 0
tellraw @s[scores={Dialog=548}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.20"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_pass.21"}]}
tellraw @s[scores={Dialog=692}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.22"}]}
tellraw @s[scores={Dialog=716}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.23"}]}
tellraw @s[scores={Dialog=780}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_pass.24"}]}
tellraw @s[scores={Dialog=820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_pass.25"}]}
tag @s[scores={Dialog=836}] remove dialog_infinity_karins_pass
scoreboard players reset @s[scores={Dialog=836}] DialogNr
scoreboard players set @s[scores={Dialog=836}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog