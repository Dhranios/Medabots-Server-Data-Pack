execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_laboratory_a
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand 39 59 40 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["kid","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1972748}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12765122}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12154938}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=39,y=59,z=40,tag=kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..95}] at @e[tag=kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] 39 59 36 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_a.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown","color":"green"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_a.2"}]}
execute if entity @s[scores={Dialog=96}] as @e[tag=kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=96}] run tag @e[tag=kid,tag=this_dialog,limit=1] add walking
tag @s[scores={Dialog=236}] remove dialog_infinity_rubberobo_leaves_laboratory_a
scoreboard players reset @s[scores={Dialog=236}] DialogNr
scoreboard players set @s[scores={Dialog=236}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog