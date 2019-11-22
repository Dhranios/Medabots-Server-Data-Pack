execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity spykes_pass
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1808 51 -588 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1808 51 -591 run function medabots_server:spawn_entities/cutscene/krosserdog
execute if entity @s[scores={Dialog=1}] positioned -1810 51 -591 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=1..683}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..539}] at @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1809 51 -587 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.1"}]}
tellraw @s[scores={Dialog=32}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.3"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.4"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.6"}]}
tellraw @s[scores={Dialog=232}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.7"}]}
tellraw @s[scores={Dialog=248}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.8"}]}
tellraw @s[scores={Dialog=296}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.9"}]}
advancement grant @s[scores={Dialog=320}] only medabots_server:special_items/passes/ruins_in_d
tellraw @s[scores={Dialog=340}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.10"}]}
tellraw @s[scores={Dialog=348}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.spykes_pass.11"}]}
tellraw @s[scores={Dialog=420}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.12"}]}
tellraw @s[scores={Dialog=452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.13"}]}
tellraw @s[scores={Dialog=492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.spykes_pass.14"}]}
execute if entity @s[scores={Dialog=540}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=540}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.15"}]}
tellraw @s[scores={Dialog=548}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.16"}]}
tellraw @s[scores={Dialog=620}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.17"}]}
tellraw @s[scores={Dialog=668}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.18"}]}
execute if entity @s[scores={Dialog=684}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=684}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.krosserdog"},{"translate":"medabots_server:dialog.infinity.spykes_pass.19"}]}
tellraw @s[scores={Dialog=724}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.20"}]}
tellraw @s[scores={Dialog=740}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.spykes_pass.21"}]}
execute if entity @s[scores={Dialog=772}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1810 51 -633
execute if entity @s[scores={Dialog=772}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=773..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=772}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1810 51 -633
execute if entity @s[scores={Dialog=772}] run tag @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=773..}] as @e[tag=krosserdog,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=969}] remove dialog_infinity_spykes_pass
scoreboard players set @s[scores={Dialog=969}] MusicType 1
scoreboard players set @s[scores={Dialog=969}] Music 0
scoreboard players reset @s[scores={Dialog=969}] DialogNr
scoreboard players set @s[scores={Dialog=969}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog