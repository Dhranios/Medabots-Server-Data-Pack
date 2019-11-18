execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity vs_screws
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] positioned -1995 51 -561 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1999 51 -578 run function medabots_server:spawn_entities/cutscene/peppercat
execute if entity @s[scores={Dialog=1}] positioned -1997 51 -577 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ ~90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.1"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_screws.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_screws.4"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.5"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.peppercat"},{"translate":"medabots_server:dialog.infinity.vs_screws.6"}]}
execute if entity @s[scores={Dialog=144}] positioned -1998 51 -541 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=144}] positioned -1996 51 -541 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=144}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=144}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=145..224}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=224}] as @e[tag=spyke,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=144}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=144}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add running
execute if entity @s[scores={Dialog=145..224}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.425
execute if entity @s[scores={Dialog=224}] as @e[tag=sloan,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=224}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=224}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=144..225}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.7"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.8"}]}
tellraw @s[scores={Dialog=208}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.9"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.10"}]}
tellraw @s[scores={Dialog=280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.11"}]}
tellraw @s[scores={Dialog=300}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws.12"}]}
tellraw @s[scores={Dialog=348}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.13"}]}
tellraw @s[scores={Dialog=364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.14"}]}
tellraw @s[scores={Dialog=404}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.15"}]}
tellraw @s[scores={Dialog=452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.16"}]}
tellraw @s[scores={Dialog=460}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws.17"}]}
execute if entity @s[scores={Dialog=480}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=sloan,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=508}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.18"}]}
tellraw @s[scores={Dialog=516}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.19"}]}
tellraw @s[scores={Dialog=588}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws.20"}]}
tellraw @s[scores={Dialog=644}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.21"}]}
execute if entity @s[scores={Dialog=664..1947}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws.22"}]}
tellraw @s[scores={Dialog=748}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.23"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws.24"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.25"}]}
tellraw @s[scores={Dialog=864}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.26"}]}
tellraw @s[scores={Dialog=880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.27"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.28"}]}
tellraw @s[scores={Dialog=920}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws.29"}]}
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.30","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=948..1167}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=948..1423}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1008}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.31"}]}
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.32"}]}
tellraw @s[scores={Dialog=1040}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.vs_screws.33","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.34"}]}
execute if entity @s[scores={Dialog=1168}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1168}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1169..1195}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1195}] run kill @e[tag=spyke,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.35"}]}
tellraw @s[scores={Dialog=1248}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.36"}]}
tellraw @s[scores={Dialog=1280}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.vs_screws.37"}]}
tellraw @s[scores={Dialog=1288}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.38"}]}
tellraw @s[scores={Dialog=1320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.39"}]}
tellraw @s[scores={Dialog=1328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.40"}]}
execute if entity @s[scores={Dialog=1424}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=1424}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1425..1434}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1435}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1436..1455}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1455}] run kill @e[tag=sloan,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1444}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws.41"}]}
tellraw @s[scores={Dialog=1468}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.42"}]}
tellraw @s[scores={Dialog=1476}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.43"}]}
tellraw @s[scores={Dialog=1492}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.44","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1548}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.45"}]}
tellraw @s[scores={Dialog=1572}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.46"}]}
tellraw @s[scores={Dialog=1644}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws.47"}]}
tellraw @s[scores={Dialog=1660}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.48"}]}
tellraw @s[scores={Dialog=1676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.49"}]}
tellraw @s[scores={Dialog=1780}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.50"}]}
tellraw @s[scores={Dialog=1820}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.51"}]}
tellraw @s[scores={Dialog=1868}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.vs_screws.52"}]}
execute if entity @s[scores={Dialog=1948}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1948}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1949..1968}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1968}] run kill @e[tag=samantha,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=1948}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1998 51 -581
execute if entity @s[scores={Dialog=1948}] run tag @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1949..1961}] as @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1961}] run kill @e[tag=peppercat,tag=!medabot_model,tag=this_dialog,limit=1]
tellraw @s[scores={Dialog=1968}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.vs_screws.53"}]}
tellraw @s[scores={Dialog=2016}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.vs_screws.54"}]}
tag @s[scores={Dialog=2048}] remove dialog_infinity_vs_screws
scoreboard players set @s[scores={Dialog=2048}] MusicType 1
scoreboard players set @s[scores={Dialog=2048}] Music 0
scoreboard players reset @s[scores={Dialog=2048}] DialogNr
scoreboard players set @s[scores={Dialog=2048}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog