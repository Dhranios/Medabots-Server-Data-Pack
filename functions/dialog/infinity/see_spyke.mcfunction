scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity see_spyke
execute if entity @s[scores={Dialog=1}] run summon minecraft:armor_stand -361 55 -83 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["spyke","cutscene"],Rotation:[-90.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2764847}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6176294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3291004}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute at @s as @e[x=-361,y=55,z=-83,tag=spyke,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=1..}] at @e[tag=spyke,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[distance=..0.1,tag=spyke,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.see_spyke.1","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=40}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.see_spyke.2"}]}
tellraw @s[scores={Dialog=56}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.see_spyke.3"}]}
tellraw @s[scores={Dialog=88}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.see_spyke.4"}]}
tellraw @s[scores={Dialog=152}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.spyke"},{"translate":"medabots_server:dialog.infinity.see_spyke.5"}]}
tag @s[scores={Dialog=184}] remove dialog_infinity_see_spyke
scoreboard players reset @s[scores={Dialog=184}] DialogNr
scoreboard players set @s[scores={Dialog=184}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog