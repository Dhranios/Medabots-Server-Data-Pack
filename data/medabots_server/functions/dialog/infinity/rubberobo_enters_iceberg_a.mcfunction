execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_enters_iceberg_a
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1705 50 -225 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1316878}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12501694}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12549168}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute if entity @s[scores={Dialog=1}] as @e[x=-1705,y=50,z=-225,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1703 50 -225 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:330759}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2107171}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8192011}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute if entity @s[scores={Dialog=1}] as @e[x=-1703,y=50,z=-225,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
teleport @s[scores={Dialog=1}] -1704 50 -221 -180 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_iceberg_a.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_iceberg_a.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_iceberg_a.3"}]}
tellraw @s[scores={Dialog=96}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_iceberg_a.4"}]}
tellraw @s[scores={Dialog=176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_enters_iceberg_a.5"}]}
tag @s[scores={Dialog=240}] remove dialog_infinity_rubberobo_enters_iceberg_a
scoreboard players reset @s[scores={Dialog=240}] DialogNr
scoreboard players set @s[scores={Dialog=240}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog