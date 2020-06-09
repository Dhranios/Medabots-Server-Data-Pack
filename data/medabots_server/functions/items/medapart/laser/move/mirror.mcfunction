execute at @s positioned ~ ~0.7 ~ as @e[type=minecraft:armor_stand,distance=..0.7,tag=mirror,sort=nearest,limit=1] if entity @s[tag=45] positioned ~ ~-0.7 ~ run tag @e[distance=..0.2,tag=laser] add 45
execute at @s positioned ~ ~0.7 ~ as @e[type=minecraft:armor_stand,distance=..0.7,tag=mirror,sort=nearest,limit=1] if entity @s[tag=-45] positioned ~ ~-0.7 ~ run tag @e[distance=..0.2,tag=laser] add -45

playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
execute store result score @s HomeRot run data get entity @s Rotation[0]
execute at @s[tag=45,scores={HomeRot=135..180}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=45,scores={HomeRot=-180..-135}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=45,scores={HomeRot=-45..45}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=45,scores={HomeRot=-135..-45}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=45,scores={HomeRot=45..135}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=-45,scores={HomeRot=135..180}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=-45,scores={HomeRot=-180..-135}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=-45,scores={HomeRot=-45..45}] run teleport @s ~ ~ ~ ~90 ~
execute at @s[tag=-45,scores={HomeRot=-135..-45}] run teleport @s ~ ~ ~ ~-90 ~
execute at @s[tag=-45,scores={HomeRot=45..135}] run teleport @s ~ ~ ~ ~-90 ~
tag @s remove 45
tag @s remove -45

execute store result entity @s ArmorItems[3].tag.medabots_server.last_mirror.x int 1 run data get entity @s Pos[0]
execute store result entity @s ArmorItems[3].tag.medabots_server.last_mirror.y int 1 run data get entity @s Pos[1]
execute store result entity @s ArmorItems[3].tag.medabots_server.last_mirror.z int 1 run data get entity @s Pos[2]