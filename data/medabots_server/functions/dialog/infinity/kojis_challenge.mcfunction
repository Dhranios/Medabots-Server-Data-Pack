execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity kojis_challenge
scoreboard players set @s[scores={Dialog=1}] MusicType 38
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -341 55 -74 run function medabots_server:spawn_entities/cutscene/roks
execute if entity @s[scores={Dialog=1}] positioned -343 55 -75 run function medabots_server:spawn_entities/cutscene/koji
execute if entity @s[scores={Dialog=1..}] at @e[tag=koji,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=koji,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] at @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=roks,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=koji,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.3","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.4"}]}
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.5"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.6"}]}
tellraw @s[scores={Dialog=192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.7"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.8"}]}
tellraw @s[scores={Dialog=240}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.9"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.10"}]}
tellraw @s[scores={Dialog=272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.11"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.12"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.13"}]}
tellraw @s[scores={Dialog=336}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.14"}]}
tellraw @s[scores={Dialog=344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.15"}]}
tellraw @s[scores={Dialog=360}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.16"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.17"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.18"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.19"}]}
tellraw @s[scores={Dialog=528}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.20"}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.21"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.22"}]}
tellraw @s[scores={Dialog=656}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.23"}]}
tellraw @s[scores={Dialog=680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.24"}]}
tellraw @s[scores={Dialog=712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.25"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.26"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.27"}]}
tellraw @s[scores={Dialog=856}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.28"}]}
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.29"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.30"}]}
tellraw @s[scores={Dialog=984}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.31"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.roks","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.32"}]}
tellraw @s[scores={Dialog=1048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.33"}]}
tellraw @s[scores={Dialog=1056}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.34"}]}
tellraw @s[scores={Dialog=1088}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.35"}]}
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.36"}]}
tellraw @s[scores={Dialog=1144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.koji","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.37"}]}
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.38"}]}
tellraw @s[scores={Dialog=1296}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.39"}]}
tag @s[scores={Dialog=1328..},advancements={medabots_server:main/true_medafighter=true}] add already_won
tellraw @s[scores={Dialog=1328},tag=already_won] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.kojis_challenge.40.alternate"}]}
tag @s[scores={Dialog=1368},tag=already_won] remove dialog_infinity_kojis_challenge
tag @s[scores={Dialog=1368},tag=already_won] add dialog_infinity_kojis_pass
scoreboard players set @s[scores={Dialog=1368},tag=already_won] Dialog 1
tag @s[scores={Dialog=1369}] remove dialog_infinity_kojis_challenge
scoreboard players set @s[scores={Dialog=1369}] MusicType 1
scoreboard players set @s[scores={Dialog=1369}] Music 0
scoreboard players reset @s[scores={Dialog=1369}] DialogNr
scoreboard players set @s[scores={Dialog=1369}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog
tag @s[tag=already_won] remove already_won