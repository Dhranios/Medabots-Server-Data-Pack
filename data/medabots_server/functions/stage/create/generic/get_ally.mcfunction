summon minecraft:item ~ ~ ~ {Tags:["spawn_medabot","new"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b}}}
data modify entity @e[type=minecraft:item,distance=..0.7,tag=new,limit=1] Item set from entity @s Inventory[{Slot:103b}].tag.medabots_server.items[{Slot:-106b}]
# practice because they should be able to lose their Medapart, but aren't yet
data modify entity @e[type=minecraft:item,distance=..0.7,tag=new,limit=1] Item.tag.medabots_server merge value {cpu_data:{team:"ally",level:0,practice_battle:1b}}
execute store result entity @e[type=minecraft:item,distance=..0.7,tag=new,limit=1] Item.tag.medabots_server.cpu_data.level int 1 run scoreboard players get @s Level
teleport @e[type=minecraft:item,distance=..0.7,tag=new,limit=1] ~ ~ ~ ~ ~