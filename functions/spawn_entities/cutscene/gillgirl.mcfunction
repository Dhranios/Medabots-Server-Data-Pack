summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["gillgirl","cutscene","this_dialog"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:1377838}}},{id:"minecraft:player_head",Count:1b,tag:{}}]}
execute as @e[tag=gillgirl,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr