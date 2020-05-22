execute at @s positioned ~ ~0.7 ~ if entity @e[distance=..0.7,tag=mirror,y_rotation=45] run tag @s add 45
execute at @s positioned ~ ~0.7 ~ if entity @e[distance=..0.7,tag=mirror,y_rotation=-45] run tag @s add -45

execute if entity @s run playsound medabots_server:block.mirror.reflect block @a ~ ~ ~ 1
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