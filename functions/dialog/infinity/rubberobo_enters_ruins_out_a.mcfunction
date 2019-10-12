execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_ruins_out_a
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1}] positioned -409 55 -39 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -426 55 -21 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -90 ~
teleport @s[scores={Dialog=1}] -410 55 -40 40 0
teleport @s[scores={Dialog=1..711}] -410 55 -40
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 43.5 ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.2"}]}
execute if entity @s[scores={Dialog=10}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.3"}]}
execute if entity @s[scores={Dialog=30}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.4"}]}
execute if entity @s[scores={Dialog=50}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=70}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.5"}]}
execute if entity @s[scores={Dialog=90}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.6"}]}
tellraw @s[scores={Dialog=116}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.7"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.8"}]}
execute if entity @s[scores={Dialog=152}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -429 55 -28
execute if entity @s[scores={Dialog=152}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=153..187}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=187}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=187}] run summon minecraft:armor_stand -441 55 -10 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-120.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3225135}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8023136}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4551997}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-441,y=55,z=-10,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=188}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=188..252}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=253}] as @e[tag=kid,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=253}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 160 ~
tellraw @s[scores={Dialog=253}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.9"}]}
tellraw @s[scores={Dialog=285}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.10"}]}
execute if entity @s[scores={Dialog=309}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=309..322}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=322}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=323}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 140 0
execute if entity @s[scores={Dialog=324..336}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=336}] as @e[tag=kid,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=336}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=336}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -426 55 -21
execute if entity @s[scores={Dialog=336}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=336..370}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=370}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=370}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
execute if entity @s[scores={Dialog=390}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=410}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 ~
tellraw @s[scores={Dialog=410}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.11"}]}
execute if entity @s[scores={Dialog=426}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -429 55 -19
execute if entity @s[scores={Dialog=426}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=426..443}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=444}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 135 ~
execute if entity @s[scores={Dialog=445..460}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=460}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
execute if entity @s[scores={Dialog=447}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=520}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=520}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=544}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=521..546}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=546}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s remove running
tellraw @s[scores={Dialog=546}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.12"}]}
execute if entity @s[scores={Dialog=570}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=590}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=610}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 ~
execute if entity @s[scores={Dialog=630}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -180 ~
execute if entity @s[scores={Dialog=650}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 40 ~
execute if entity @s[scores={Dialog=651}] as @e[tag=rubberobo,tag=this_dialog,limit=1] run tag @s add running
execute if entity @s[scores={Dialog=651..710}] as @e[tag=rubberobo,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=710}] run teleport @e[tag=rubberobo,tag=this_dialog,limit=1] ~ -100 ~
execute if entity @s[scores={Dialog=710}] run tag @e[tag=rubberobo,tag=this_dialog,limit=1] add dead
scoreboard players set @s[scores={Dialog=710}] MusicType 1
scoreboard players set @s[scores={Dialog=710}] Music 0
tellraw @s[scores={Dialog=710}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.13"}]}
tellraw @s[scores={Dialog=734}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.14"}]}
tellraw @s[scores={Dialog=750}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.15","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=774}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.16"}]}
execute if entity @s[scores={Dialog=781..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -426 55 -15
execute if entity @s[scores={Dialog=781..}] run tag @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=782..919}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=920..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=782..913}] facing -426 55 -17 run teleport @s ^ ^ ^0.2125
teleport @s[scores={Dialog=913..}] -426 55 -17
execute if entity @s[scores={Dialog=887}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ -45 ~
execute if entity @s[scores={Dialog=887}] run setblock -431 53 -20 minecraft:redstone_block
execute if entity @s[scores={Dialog=911}] run setblock -431 53 -20 minecraft:dirt
execute if entity @s[scores={Dialog=888}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=888..913}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=913}] as @e[tag=kid,tag=this_dialog,limit=1] run tag @s remove walking
execute if entity @s[scores={Dialog=913..}] at @e[tag=kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=913}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.17"}]}
execute if entity @s[scores={Dialog=929..}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=kid,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=929}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.18"}]}
tellraw @s[scores={Dialog=969}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.19"}]}
tellraw @s[scores={Dialog=1001}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.20"}]}
tellraw @s[scores={Dialog=1025}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.21"}]}
tellraw @s[scores={Dialog=1049}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.22"}]}
tellraw @s[scores={Dialog=1097}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.23"}]}
tellraw @s[scores={Dialog=1129}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.24"}]}
tellraw @s[scores={Dialog=1145}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.25"}]}
tellraw @s[scores={Dialog=1177}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.26"}]}
tellraw @s[scores={Dialog=1193}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.27"}]}
tellraw @s[scores={Dialog=1225}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_ruins_out_a.28"}]}
advancement grant @s[scores={Dialog=1289}] only medabots_server:special_items/passes/robo_2
tag @s[scores={Dialog=1289}] remove dialog_infinity_rubberobo_enters_ruins_out_a
scoreboard players reset @s[scores={Dialog=1289}] DialogNr
scoreboard players set @s[scores={Dialog=1289}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog