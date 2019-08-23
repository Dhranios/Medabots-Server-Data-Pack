# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute rotated as @s run teleport @s[tag=!sneak_pos] ^ ^-.38 ^-.25
execute rotated as @s run teleport @s[tag=sneak_pos] ^ ^-.48 ^-.25
tag @s[tag=sneak_pos] remove sneak_pos

execute store result score @s HomeRot run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRot=..0}] HomeRot 360000
execute unless entity @s[scores={Time=..2147483647}] run scoreboard players operation @s Time = @s HomeRot
scoreboard players operation @s FloorSwitchTime = @s Time

execute if entity @s[scores={FloorSwitchTime=..90000,HomeRot=270000..}] run scoreboard players add @s FloorSwitchTime 360000
execute if entity @s[scores={FloorSwitchTime=270000..,HomeRot=..90000}] run scoreboard players remove @s FloorSwitchTime 360000
scoreboard players operation @s FloorSwitchTime -= @s HomeRot
execute unless entity @s[scores={FloorSwitchTime=-50000..50000}] run function medabots_server:animations/medabot/rotate_body
scoreboard players remove @s[scores={Time=360000..}] Time 360000
scoreboard players add @s[scores={Time=..0}] Time 360000
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s Time