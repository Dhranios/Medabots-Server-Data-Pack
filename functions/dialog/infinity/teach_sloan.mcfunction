execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity teach_sloan
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -1713 51 -397 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1717 51 -399 run function medabots_server:spawn_entities/cutscene/totalizer
execute if entity @s[scores={Dialog=1}] positioned -1715 51 -400 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1..}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=totalizer,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1715 51 -396 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.teach_sloan.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.teach_sloan.4"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.5"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.6"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.7"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.teach_sloan.8"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.9"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.teach_sloan.10"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.11"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.12"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.totalizer"},{"translate":"medabots_server:dialog.infinity.teach_sloan.13"}]}
tellraw @s[scores={Dialog=688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.14"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.15"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.16"}]}
tellraw @s[scores={Dialog=816}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.17"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.teach_sloan.18"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.19"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.20"}]}
tellraw @s[scores={Dialog=1016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.21","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.teach_sloan.22"}]}
tellraw @s[scores={Dialog=1096}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.teach_sloan.23"}]}
advancement grant @s[scores={Dialog=1112}] only medabots_server:special_items/passes/explain
scoreboard players set @s[scores={Dialog=1112}] MusicType 1
scoreboard players set @s[scores={Dialog=1112}] Music 0
tag @s[scores={Dialog=1112}] remove dialog_infinity_teach_sloan
scoreboard players reset @s[scores={Dialog=1112}] DialogNr
scoreboard players set @s[scores={Dialog=1112}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog