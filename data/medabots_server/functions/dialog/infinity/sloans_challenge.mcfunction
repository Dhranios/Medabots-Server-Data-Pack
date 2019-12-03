execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity sloans_challenge
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1714 51 -493 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1716 51 -495 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=1..}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1715 51 -492 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.2"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.3"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.4"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.5"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.7"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.8"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.9"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.10"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.11"}]}
tellraw @s[scores={Dialog=600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.12"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.13"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.14"}]}
tellraw @s[scores={Dialog=696}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.15"}]}
tellraw @s[scores={Dialog=720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.16"}]}
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.17"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.18"}]}
tellraw @s[scores={Dialog=832}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.19"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.20"}]}
tellraw @s[scores={Dialog=952}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.21"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.22"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.23"}]}
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.24"}]}
tellraw @s[scores={Dialog=1248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.25"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.sloans_challenge.26"}]}
tag @s[scores={Dialog=1280}] remove dialog_infinity_sloans_challenge
scoreboard players set @s[scores={Dialog=1280}] MusicType 1
scoreboard players set @s[scores={Dialog=1280}] Music 0
scoreboard players reset @s[scores={Dialog=1280}] DialogNr
scoreboard players set @s[scores={Dialog=1280}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog