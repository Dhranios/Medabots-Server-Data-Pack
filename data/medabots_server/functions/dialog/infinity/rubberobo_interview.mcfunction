execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_interview
scoreboard players set @s[scores={Dialog=1}] MusicType 37
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned 43 59 47 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned 47 59 52 run function medabots_server:spawn_entities/cutscene/erika
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 44 59 52 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3224623}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8153946}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14015190}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=44,y=59,z=52,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] positioned 88 59 90 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -25 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 90
teleport @s[scores={Dialog=1}] 45 59 47 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.1"}]}
execute if entity @s[scores={Dialog=40..119}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.2"}]}
execute if entity @s[scores={Dialog=120}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
tellraw @s[scores={Dialog=120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.3"}]}
tellraw @s[scores={Dialog=184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.4"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.5"}]}
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.6"}]}
tellraw @s[scores={Dialog=320}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.7"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.8"}]}
tellraw @s[scores={Dialog=384}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.9"}]}
tellraw @s[scores={Dialog=448}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.10"}]}
tellraw @s[scores={Dialog=520}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.11"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.12"}]}
tellraw @s[scores={Dialog=648}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.13"}]}
tellraw @s[scores={Dialog=736}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.14"}]}
tellraw @s[scores={Dialog=768}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.15"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.16"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.17"}]}
execute if entity @s[scores={Dialog=840..1020}] as @e[tag=kid,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.18"}]}
execute if entity @s[scores={Dialog=696}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 48 59 90
execute if entity @s[scores={Dialog=696}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=896}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=896}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 0
scoreboard players set @s[scores={Dialog=856}] MusicType 32
scoreboard players set @s[scores={Dialog=856}] Music 0
execute if entity @s[scores={Dialog=856..927}] as @e[tag=erika,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=856..1020}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=896}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.19"}]}
tellraw @s[scores={Dialog=904}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.20"}]}
tellraw @s[scores={Dialog=912}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.21"}]}
execute if entity @s[scores={Dialog=928..1119}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=928}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.22"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.23","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=1008}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.24"}]}
execute if entity @s[scores={Dialog=1008}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 45 59 93
execute if entity @s[scores={Dialog=1008}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=1021}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=1021}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.25"}]}
tellraw @s[scores={Dialog=1072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.26"}]}
tellraw @s[scores={Dialog=1104}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.27"}]}
scoreboard players set @s[scores={Dialog=1120}] MusicType 1
scoreboard players set @s[scores={Dialog=1120}] Music 0
execute if entity @s[scores={Dialog=1120}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
tellraw @s[scores={Dialog=1120}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.28"}]}
execute if entity @s[scores={Dialog=1136..1279}] at @e[tag=erika,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=erika,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.29"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.30"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.erika","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_interview.31"}]}
execute if entity @s[scores={Dialog=1280}] as @e[tag=erika,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 45 59 93
execute if entity @s[scores={Dialog=1280}] run tag @e[tag=erika,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=1280}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -1813 51 -443
execute if entity @s[scores={Dialog=1280}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=1470}] remove dialog_infinity_rubberobo_interview
scoreboard players reset @s[scores={Dialog=1470}] DialogNr
scoreboard players set @s[scores={Dialog=1470}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog