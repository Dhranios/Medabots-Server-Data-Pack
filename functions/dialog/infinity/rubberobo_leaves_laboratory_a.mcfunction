scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity rubberobo_leaves_laboratory_a
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -1772 50 -281 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["robbed_kid","cutscene"],Rotation:[-180.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1972748}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12765122}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12154938}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-1772,y=50,z=-281,tag=robbed_kid,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..95}] at @e[tag=robbed_kid,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=robbed_kid,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1772 50 -285 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_a.1"}]}
tellraw @s[scores={Dialog=72}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.unknown"},{"translate":"medabots_server:dialog.infinity.rubberobo_leaves_laboratory_a.2"}]}
execute if entity @s[scores={Dialog=96}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=97..}] as @e[tag=robbed_kid,tag=this_dialog,limit=1] at @s run teleport @s ^ ^ ^0.2125
tag @s[scores={Dialog=236}] remove dialog_infinity_rubberobo_leaves_laboratory_a
scoreboard players reset @s[scores={Dialog=236}] DialogNr
scoreboard players set @s[scores={Dialog=236}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog