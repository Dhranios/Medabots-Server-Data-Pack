# Credit where credit is due: original function by SirBenet, this is a slightly modified version

# Get my motion
execute store result score @s MotionX run data get entity @s Motion[0] 1000000
execute store result score @s MotionY run data get entity @s Motion[1] 1000000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000000

# Get my pos
execute store result score @s PosX run data get entity @s Pos[0] 500000
execute store result score @s PosY run data get entity @s Pos[1] 500000
execute store result score @s PosZ run data get entity @s Pos[2] 500000

# Get target pos
execute store result score @s HomeX run data get entity @e[distance=..0.1,limit=1] Pos[0] 500000
execute store result score @s HomeY run data get entity @e[distance=..0.1,limit=1] Pos[1] 500000
execute store result score @s HomeZ run data get entity @e[distance=..0.1,limit=1] Pos[2] 500000
scoreboard players add @s HomeY 500000

# Take difference
scoreboard players operation @s HomeX -= @s PosX 
scoreboard players operation @s HomeY -= @s PosY 
scoreboard players operation @s HomeZ -= @s PosZ 

# Add difference to motion
scoreboard players operation @s MotionX += @s HomeX
scoreboard players operation @s MotionY += @s HomeY
scoreboard players operation @s MotionZ += @s HomeZ

# Set back motion
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s MotionX
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s MotionY
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s MotionZ