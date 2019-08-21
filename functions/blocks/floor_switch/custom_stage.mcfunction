# Go to position to affect
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["me"]}
execute store result entity @e[tag=me,limit=1] Pos[0] double 1 run scoreboard players get @s HomeX
execute store result entity @e[tag=me,limit=1] Pos[1] double 1 run scoreboard players get @s HomeY
execute store result entity @e[tag=me,limit=1] Pos[2] double 1 run scoreboard players get @s HomeZ
execute as @e[tag=me,limit=1] at @s run teleport @s ~0.5 ~ ~0.5

# Power position if powered
execute if entity @s[scores={FloorSwitchTime=1..},tag=!negative] at @e[tag=me,limit=1] run scoreboard players operation @e[distance=..0.7] PowerAmount += @s NeededPower
execute if entity @s[scores={FloorSwitchTime=1..},tag=!negative] at @e[tag=me,limit=1] run scoreboard players add @e[tag=fan,distance=..0.7,tag=!changed] Moving 1
execute if entity @s[scores={FloorSwitchTime=1..},tag=!negative] at @e[tag=me,limit=1] run tag @e[tag=fan,distance=..0.7,tag=!changed] add changed
execute if entity @s[scores={FloorSwitchTime=..0},tag=negative] at @e[tag=me,limit=1] run scoreboard players operation @e[distance=..0.7] PowerAmount += @s NeededPower
execute if entity @s[scores={FloorSwitchTime=..0},tag=negative] at @e[tag=me,limit=1] run scoreboard players add @e[tag=fan,distance=..0.7,tag=!changed] Moving 1
execute if entity @s[scores={FloorSwitchTime=..0},tag=negative] at @e[tag=me,limit=1] run tag @e[tag=fan,distance=..0.7,tag=!changed] add changed

# Unpower position if unpowered
execute if entity @s[scores={FloorSwitchTime=..0},tag=!negative] at @e[tag=me,limit=1] run scoreboard players operation @e[distance=..0.7] PowerAmount -= @s NeededPower
execute if entity @s[scores={FloorSwitchTime=..0},tag=!negative] at @e[tag=me,limit=1] run scoreboard players remove @e[tag=fan,distance=..0.7,tag=changed] Moving 1
execute if entity @s[scores={FloorSwitchTime=..0},tag=!negative] at @e[tag=me,limit=1] run tag @e[tag=fan,distance=..0.7,tag=changed] remove changed
execute if entity @s[scores={FloorSwitchTime=1..},tag=negative] at @e[tag=me,limit=1] run scoreboard players operation @e[distance=..0.7] PowerAmount -= @s NeededPower
execute if entity @s[scores={FloorSwitchTime=1..},tag=negative] at @e[tag=me,limit=1] run scoreboard players remove @e[tag=fan,distance=..0.7,tag=changed] Moving 1
execute if entity @s[scores={FloorSwitchTime=1..},tag=negative] at @e[tag=me,limit=1] run tag @e[tag=fan,distance=..0.7,tag=changed] remove changed

kill @e[tag=me,limit=1]

tag @s[tag=blue_floor_switch] remove toggle
tag @s[tag=yellow_floor_switch,scores={FloorSwitchTime=..0}] remove toggle