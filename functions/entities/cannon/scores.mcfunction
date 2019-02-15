scoreboard players add @s CannonFire 0
teleport @s[tag=look_over_x_negative] ~ ~ ~ 90 0
teleport @s[tag=look_over_x_positive] ~ ~ ~ -90 0
teleport @s[tag=look_over_z_negative] ~ ~ ~ -180 0
teleport @s[tag=look_over_z_positive] ~ ~ ~ 0 0
teleport @s[tag=rotate_over_x_negative] ~ ~ ~ 90 0
teleport @s[tag=rotate_over_x_positive] ~ ~ ~ -90 0
teleport @s[tag=rotate_over_z_negative] ~ ~ ~ -180 0
teleport @s[tag=rotate_over_z_positive] ~ ~ ~ 0 0
tag @s[tag=rotate_over_x_negative,tag=detect] add cannon_4
tag @s[tag=rotate_over_x_positive,tag=detect] add cannon_4
tag @s[tag=rotate_over_z_negative,tag=detect] add cannon_4
tag @s[tag=rotate_over_z_positive,tag=detect] add cannon_4
scoreboard players set @s Time -1