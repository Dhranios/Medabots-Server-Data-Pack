data modify entity @s[tag=45] Pose.Head[1] set value -45.0f
data modify entity @s[tag=-45] Pose.Head[1] set value 45.0f
tag @s[tag=45] add -45
tag @s[tag=-45,tag=!45] add 44
tag @s[tag=-45,tag=45] remove 45
tag @s[tag=44] add 45
tag @s[tag=44] remove -45
tag @s[tag=44] remove 44

playsound medabots_server:block.mirror.rotate block @a ~ ~ ~ 1