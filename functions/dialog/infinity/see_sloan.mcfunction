scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity see_sloan
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -302 55 -14 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["sloan","cutscene"],Rotation:[170.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2435929}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2635303}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15515463}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-302,y=55,z=-14,tag=sloan,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] at @e[tag=sloan,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=sloan,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.see_sloan.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=24}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.see_sloan.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.sloan"},{"translate":"medabots_server:dialog.infinity.see_sloan.3"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.see_sloan.4"}]}
tag @s[scores={Dialog=112}] remove dialog_infinity_see_sloan
scoreboard players reset @s[scores={Dialog=112}] DialogNr
scoreboard players set @s[scores={Dialog=112}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog