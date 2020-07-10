execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_iceberg_a
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 57 59 33 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1316878}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12501694}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12549168}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute if entity @s[scores={Dialog=1}] as @e[x=57,y=59,z=33,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 59 59 33 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:330759}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2107171}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8192011}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute if entity @s[scores={Dialog=1}] as @e[x=59,y=59,z=33,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] 58 59 24 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_iceberg_a.1"}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_iceberg_a.2"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_iceberg_a.3"}]}
tellraw @s[scores={Dialog=112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_iceberg_a.4"}]}
execute if entity @s[scores={Dialog=152}] as @e[tag=kid,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing 58 59 46
execute if entity @s[scores={Dialog=152}] as @e[tag=kid,tag=this_dialog] run tag @s add walking
tag @s[scores={Dialog=212}] remove dialog_infinity_rubberobo_leaves_iceberg_a
scoreboard players reset @s[scores={Dialog=212}] DialogNr
scoreboard players set @s[scores={Dialog=212}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog