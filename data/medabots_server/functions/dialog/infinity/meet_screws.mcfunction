execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity meet_screws
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1539 51 -218 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1535 51 -217 run function medabots_server:spawn_entities/cutscene/samantha
teleport @s[scores={Dialog=1}] -1539 51 -216 -105 0
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -75 ~
execute if entity @s[scores={Dialog=1..320}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.1"}]}
tellraw @s[scores={Dialog=16}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.2"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_screws.3"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.4"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.5"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_screws.6"}]}
tellraw @s[scores={Dialog=144}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.7"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.8"}]}
tellraw @s[scores={Dialog=224}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_screws.9"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.10"}]}
tellraw @s[scores={Dialog=288}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.11"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.meet_screws.12"}]}
execute if entity @s[scores={Dialog=320}] positioned -1540 51 -185 run function medabots_server:spawn_entities/cutscene/spyke
execute if entity @s[scores={Dialog=320}] positioned -1538 51 -185 run function medabots_server:spawn_entities/cutscene/sloan
execute if entity @s[scores={Dialog=321}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1536 51 -217
execute if entity @s[scores={Dialog=321}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=322..452}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=452}] as @e[tag=spyke,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=321}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1535 51 -217
execute if entity @s[scores={Dialog=321}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=322..452}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=452}] as @e[tag=sloan,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=321..452}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s facing entity @e[tag=spyke,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=453}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.meet_screws.13"}]}
execute if entity @s[scores={Dialog=453}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=469}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.meet_screws.14"}]}
tellraw @s[scores={Dialog=485}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.15"}]}
execute if entity @s[scores={Dialog=501..686}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=501}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.16"}]}
tellraw @s[scores={Dialog=565}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_screws.17"}]}
tellraw @s[scores={Dialog=605}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.18"}]}
tellraw @s[scores={Dialog=621}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.19"}]}
tellraw @s[scores={Dialog=653}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.meet_screws.20"}]}
tellraw @s[scores={Dialog=677}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.meet_screws.21"}]}
execute if entity @s[scores={Dialog=687}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 5 ~
tellraw @s[scores={Dialog=687}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.22"}]}
tellraw @s[scores={Dialog=759}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.23"}]}
execute if entity @s[scores={Dialog=759}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -184
execute if entity @s[scores={Dialog=759}] run tag @e[tag=samantha,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=760..}] as @e[tag=samantha,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=759}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -184
execute if entity @s[scores={Dialog=759}] run tag @e[tag=sloan,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=760..}] as @e[tag=sloan,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=775}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.meet_screws.24"}]}
tellraw @s[scores={Dialog=807}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.meet_screws.25"}]}
execute if entity @s[scores={Dialog=807}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1539 51 -184
execute if entity @s[scores={Dialog=808}] run tag @e[tag=spyke,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=808..}] as @e[tag=spyke,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=847}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.meet_screws.26"}]}
tellraw @s[scores={Dialog=879}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.meet_screws.27"}]}
execute if entity @s[scores={Dialog=879..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=890}] as @e[tag=sloan,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=911}] as @e[tag=samantha,tag=this_dialog,limit=1] run kill @s
execute if entity @s[scores={Dialog=938}] as @e[tag=spyke,tag=this_dialog,limit=1] run kill @s
tellraw @s[scores={Dialog=951}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.meet_screws.28"}]}
tag @s[scores={Dialog=983}] remove dialog_infinity_meet_screws
scoreboard players set @s[scores={Dialog=983}] MusicType 1
scoreboard players set @s[scores={Dialog=983}] Music 0
scoreboard players reset @s[scores={Dialog=983}] DialogNr
scoreboard players set @s[scores={Dialog=983}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog