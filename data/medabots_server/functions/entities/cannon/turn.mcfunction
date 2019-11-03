# Rotate cannons
teleport @s[tag=!rotate_right] ~ ~ ~ ~-1 ~
teleport @s[tag=rotate_right] ~ ~ ~ ~1 ~
teleport @s[tag=!rotate_right,scores={BugTimer=80..88}] ~ ~ ~ ~2 ~
teleport @s[tag=rotate_right,scores={BugTimer=80..88}] ~ ~ ~ ~-2 ~
teleport @s[tag=!rotate_right,scores={BugTimer=32..40}] ~ ~ ~ ~2 ~
teleport @s[tag=rotate_right,scores={BugTimer=32..40}] ~ ~ ~ ~-2 ~

# Remove decimals
execute store result entity @s Rotation[0] float 1 run data get entity @s Rotation[0]

# Make it look horizontal
execute at @s run teleport @s ~ ~ ~ ~ 0

# Rotate cannon switching direction for x negative
tag @s[tag=rotating,tag=west,y_rotation=140..-90] remove rotate_right
tag @s[tag=rotating,tag=west,y_rotation=-90..40] add rotate_right

# Rotate cannon switching direction for x positive
tag @s[tag=rotating,tag=east,y_rotation=-40..90] remove rotate_right
tag @s[tag=rotating,tag=east,y_rotation=90..-140] add rotate_right

# Rotate cannon switching direction for z negative
tag @s[tag=rotating,tag=north,y_rotation=-130..0] remove rotate_right
tag @s[tag=rotating,tag=north,y_rotation=0..130] add rotate_right

# Rotate cannon switching direction for z positive
tag @s[tag=rotating,tag=south,y_rotation=50..-180] remove rotate_right
tag @s[tag=rotating,tag=south,y_rotation=-180..-50] add rotate_right