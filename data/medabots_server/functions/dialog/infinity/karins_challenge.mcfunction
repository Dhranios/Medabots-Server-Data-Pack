execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity karins_challenge
scoreboard players set @s[scores={Dialog=1}] MusicType 36
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -393 55 -93 run function medabots_server:spawn_entities/cutscene/neutranurse
execute if entity @s[scores={Dialog=1}] positioned -394 55 -95 run function medabots_server:spawn_entities/cutscene/karin
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..183}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..191}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.2","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.3"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.5"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.6"}]}
execute if entity @s[scores={Dialog=184}] as @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=karin,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.karins_challenge.7"}]}
execute if entity @s[scores={Dialog=192}] as @e[tag=karin,tag=this_dialog,limit=1] at @s facing entity @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.neutranurse"},{"translate":"medabots_server:dialog.infinity.karins_challenge.8"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.9"}]}
execute if entity @s[scores={Dialog=296..}] at @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=neutranurse,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=296..}] at @e[tag=karin,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=karin,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.10"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.11"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.12"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.13"}]}
tellraw @s[scores={Dialog=536}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.14"}]}
tellraw @s[scores={Dialog=544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.15"}]}
tellraw @s[scores={Dialog=568}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.16"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.17"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.18"}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.19"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.20"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.21"}]}
tellraw @s[scores={Dialog=824}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.22"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.23"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.24"}]}
tellraw @s[scores={Dialog=968}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.25"}]}
tellraw @s[scores={Dialog=976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.26"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.27"}]}
tellraw @s[scores={Dialog=1024}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.28"}]}
tag @s[scores={Dialog=1024..},advancements={medabots_server:special_items/purple_plant=true,medabots_server:special_items/blue_plant=true,medabots_server:special_items/light_blue_plant=true,medabots_server:special_items/green_plant=true,medabots_server:special_items/yellow_plant=true,medabots_server:special_items/orange_plant=true,medabots_server:special_items/red_plant=true}] add has_flowers
tellraw @s[scores={Dialog=1032},tag=has_flowers] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.29.alternate"}]}
tag @s[scores={Dialog=1103},tag=has_flowers] remove dialog_infinity_karins_challenge
tag @s[scores={Dialog=1103},tag=has_flowers] add dialog_infinity_karins_pass
scoreboard players set @s[scores={Dialog=1103},tag=has_flowers] Dialog 6
tellraw @s[scores={Dialog=1032},tag=!has_flowers] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.29","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.30"}]}
tellraw @s[scores={Dialog=1176}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.31"}]}
tellraw @s[scores={Dialog=1200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.32"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.karins_challenge.33"}]}
tellraw @s[scores={Dialog=1352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.karins_challenge.34"}]}
tellraw @s[scores={Dialog=1384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.karin"},{"translate":"medabots_server:dialog.infinity.karins_challenge.35"}]}
tag @s[scores={Dialog=1440}] remove dialog_infinity_karins_challenge
scoreboard players set @s[scores={Dialog=1440}] MusicType 1
scoreboard players set @s[scores={Dialog=1440}] Music 0
scoreboard players reset @s[scores={Dialog=1440}] DialogNr
scoreboard players set @s[scores={Dialog=1440}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
tag @s[tag=has_flowers] remove has_flowers