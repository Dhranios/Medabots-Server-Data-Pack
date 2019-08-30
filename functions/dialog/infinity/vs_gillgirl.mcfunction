execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_gillgirl
stopsound @s[scores={Dialog=1}] music
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Dialog=1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Dialog=1}] MusicType -1
scoreboard players set @s[scores={Dialog=1}] Music 62
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -608 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -614 run function medabots_server:spawn_entities/cutscene/gillgirl
execute if entity @s[scores={Dialog=1}] positioned -2001 51 -614 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1..1500}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=gillgirl,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1999 51 -608 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.3"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.4"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.5"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.7"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.8"}]}
tellraw @s[scores={Dialog=392}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.9"}]}
execute if entity @s[scores={Dialog=416..1415}] at @e[tag=gillgirl,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=gillgirl,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=416..}] at @e[tag=rubberobo,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=416}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.10"}]}
tellraw @s[scores={Dialog=456}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.11"}]}
tellraw @s[scores={Dialog=496}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.12"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.13"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.14"}]}
tellraw @s[scores={Dialog=720}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.15"}]}
tellraw @s[scores={Dialog=752}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.16"}]}
tellraw @s[scores={Dialog=784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.17"}]}
tellraw @s[scores={Dialog=848}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.18"}]}
tellraw @s[scores={Dialog=888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.19"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.20"}]}
tellraw @s[scores={Dialog=1000}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.21"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.22"}]}
tellraw @s[scores={Dialog=1080}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.23"}]}
tellraw @s[scores={Dialog=1160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.24"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.25"}]}
tellraw @s[scores={Dialog=1272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.gillgirl"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.26"}]}
execute if entity @s[scores={Dialog=1416}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -2000 51 -632
execute if entity @s[scores={Dialog=1417..1501}] as @e[tag=gillgirl,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1501}] run tag @e[tag=gillgirl,tag=this_dialog,limit=1] add dead
execute if entity @s[scores={Dialog=1501..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1501}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.27"}]}
tellraw @s[scores={Dialog=1581}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.28"}]}
tellraw @s[scores={Dialog=1645}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_gillgirl.29"}]}
tag @s[scores={Dialog=1677}] remove dialog_infinity_vs_gillgirl
stopsound @s[scores={Dialog=1677}] music
scoreboard players set @s[scores={Dialog=1677}] MusicType 1
scoreboard players set @s[scores={Dialog=1677}] Music 0
scoreboard players reset @s[scores={Dialog=1677}] DialogNr
scoreboard players set @s[scores={Dialog=1677}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog

playsound medabots_server:music.entity.rubberobo music @s[scores={Music=0,MusicType=-1}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=-1}] Music 744