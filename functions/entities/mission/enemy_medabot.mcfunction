summon minecraft:item ~ ~ ~ {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b}}
data modify entity @e[distance=..0.7,tag=spawn_medabot,limit=1] Item merge from entity @s ArmorItems[3]

kill @s
kill @e[tag=goal_area,tag=new,limit=1]