execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity jaxy_follows_doctor_haru
execute if entity @s[scores={Dialog=1}] positioned -456 55 -70 run function medabots_server:spawn_entities/cutscene/jaxy
execute if entity @s[scores={Dialog=1}] positioned -450 55 -55 run function medabots_server:spawn_entities/cutscene/doctor_haru
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -472 55 -68 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4206859}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14133163}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15263976}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-472,y=55,z=-68,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 85 ~
execute if entity @s[scores={Dialog=2}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -472 55 -68
execute if entity @s[scores={Dialog=2}] run tag @e[tag=doctor_haru,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=2..124}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxy_follows_doctor_haru.1"}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.jaxy_follows_doctor_haru.2","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=40}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=40}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=40..140}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=140}] run kill @e[tag=kid,tag=this_dialog,limit=1]
scoreboard players set @s[scores={Dialog=60}] MusicType 43
scoreboard players set @s[scores={Dialog=60}] Music 0
execute if entity @s[scores={Dialog=125}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=126..155}] as @e[tag=doctor_haru,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=135}] run fill -476 55 -72 -476 57 -65 minecraft:red_wool replace minecraft:redstone_block
execute if entity @s[scores={Dialog=155}] run fill -476 55 -72 -476 57 -65 minecraft:redstone_block replace minecraft:red_wool
execute if entity @s[scores={Dialog=155}] run kill @e[tag=doctor_haru,tag=this_dialog,limit=1]
execute if entity @s[scores={Dialog=155}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ facing -472 55 -69
execute if entity @s[scores={Dialog=155}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=156..240}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=240}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] remove walking
execute if entity @s[scores={Dialog=240}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 90 0
execute if entity @s[scores={Dialog=300}] run tag @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] add walking
execute if entity @s[scores={Dialog=301..330}] as @e[tag=jaxy,tag=!medabot_model,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=305}] run fill -476 55 -72 -476 57 -65 minecraft:red_wool replace minecraft:redstone_block
execute if entity @s[scores={Dialog=325}] run fill -476 55 -72 -476 57 -65 minecraft:redstone_block replace minecraft:red_wool
scoreboard players set @s[scores={Dialog=330}] MusicType 1
scoreboard players set @s[scores={Dialog=330}] Music 0
tag @s[scores={Dialog=330}] remove dialog_infinity_jaxy_follows_doctor_haru
scoreboard players reset @s[scores={Dialog=330}] DialogNr
scoreboard players set @s[scores={Dialog=330}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog