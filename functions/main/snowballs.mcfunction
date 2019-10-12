# Save old motion for freeze check
execute store result score @s OtherX run scoreboard players get @s MotionX
execute store result score @s OtherY run scoreboard players get @s MotionY
execute store result score @s OtherZ run scoreboard players get @s MotionZ

# Make the press attack do something
execute if entity @s[tag=press] run function medabots_server:items/medapart/press/attack

# Make the kuwagata attack do something
execute if entity @s[tag=spiral_bolt] run function medabots_server:items/medapart/spiral_bolt/attack

# Save previous motion
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionY run data get entity @s Motion[1] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

# kill if frozen
execute if score @s[tag=!above,tag=!below,tag=!north,tag=!south,tag=!east,tag=!west] OtherX = @s MotionX if score @s OtherY = @s MotionY if score @s OtherZ = @s MotionZ run kill @s