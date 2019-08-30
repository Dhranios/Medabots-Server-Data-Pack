execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add edge_grabbing

# Rotate if moving
execute store result score @s PosX run scoreboard players get @e[tag=this_medabot,tag=!medabot_model,limit=1] PosX
execute store result score @s PosZ run scoreboard players get @e[tag=this_medabot,tag=!medabot_model,limit=1] PosZ
execute store result score @s HomeX run scoreboard players get @e[tag=this_medabot,tag=!medabot_model,limit=1] OtherX
execute store result score @s HomeZ run scoreboard players get @e[tag=this_medabot,tag=!medabot_model,limit=1] OtherZ
scoreboard players operation @s HomeX -= @s PosX
scoreboard players operation @s HomeZ -= @s PosZ
tag @s remove moving_backwards
execute if entity @s[tag=!edge_grabbing] unless entity @s[scores={HomeX=0,HomeZ=0}] at @s positioned ^ ^.38 ^.25 rotated as @e[tag=this_medabot,tag=!medabot_model,limit=1] rotated ~ 0 positioned ^ ^ ^-3 if entity @e[tag=this_medabot,tag=!medabot_model,limit=1,distance=..2.99] run tag @s add moving_backwards
execute if entity @s[tag=!edge_grabbing] unless entity @s[scores={HomeX=0,HomeZ=0}] at @s[tag=!moving_backwards] facing entity @e[tag=this_medabot,tag=!medabot_model,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!edge_grabbing] at @s[tag=moving_backwards] rotated as @e[tag=this_medabot,tag=!medabot_model,limit=1] rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!edge_grabbing] unless entity @s[scores={HomeX=0,HomeZ=0}] store result score @s Time run data get entity @s Rotation[0] 1000

# Get rotation
execute store result score @s HomeRot run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1000
scoreboard players add @s[scores={HomeRot=..0}] HomeRot 360000
execute unless entity @s[scores={Time=..2147483647}] run scoreboard players operation @s Time = @s HomeRot
scoreboard players operation @s FloorSwitchTime = @s Time

# Rotated based on looking direction
execute if entity @s[scores={FloorSwitchTime=..90000,HomeRot=270000..}] run scoreboard players add @s FloorSwitchTime 360000
execute if entity @s[scores={FloorSwitchTime=270000..,HomeRot=..90000}] run scoreboard players remove @s FloorSwitchTime 360000
scoreboard players operation @s FloorSwitchTime -= @s HomeRot
execute unless entity @s[scores={FloorSwitchTime=-50000..50000},tag=!edge_grabbing] run function medabots_server:animations/medabot/rotate_body
scoreboard players remove @s[scores={Time=360000..}] Time 360000
scoreboard players add @s[scores={Time=..0}] Time 360000
execute store result entity @s[tag=!edge_grabbing] Rotation[0] float 0.001 run scoreboard players get @s Time

# Move with
execute if entity @a[tag=sneak_pos,tag=this_medabot,limit=1] run tag @s add sneak_pos
execute rotated as @s run teleport @s[tag=!sneak_pos] ^ ^-.38 ^-.25
execute rotated as @s run teleport @s[tag=sneak_pos] ^ ^-.48 ^-.25
execute store result entity @s[tag=edge_grabbing,tag=!was_edge_grabbing] Rotation[0] float 0.001 run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[0] 1000
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1,y_rotation=135..-135] at @s[tag=!was_edge_grabbing] run teleport @s ~ ~ ~ -180 0
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1,y_rotation=-135..-45] at @s[tag=!was_edge_grabbing] run teleport @s ~ ~ ~ -90 0
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1,y_rotation=-45..45] at @s[tag=!was_edge_grabbing] run teleport @s ~ ~ ~ 0 0
execute if entity @e[tag=edge_grabbing,tag=this_medabot,tag=!medabot_model,limit=1,y_rotation=45..135] at @s[tag=!was_edge_grabbing] run teleport @s ~ ~ ~ 90 0
execute store result score @s[tag=edge_grabbing] Time run data get entity @s Rotation[0] 1000

tag @s[tag=was_edge_grabbing] remove was_edge_grabbing
tag @s[tag=edge_grabbing] add was_edge_grabbing
tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=sneak_pos] remove sneak_pos