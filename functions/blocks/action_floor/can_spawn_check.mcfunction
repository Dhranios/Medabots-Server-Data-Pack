execute store result score #temp Stage run scoreboard players get @s Stage
execute store result score #temp ActionFloorNr run scoreboard players get @s ActionFloorNr
execute as @a[scores={Battle=2}] if score @s Stage = #temp Stage run tag @e[distance=..0.1] add no_spawning
execute as @e[tag=!action_floor] if score @s ActionFloorNr = #temp ActionFloorNr run tag @e[distance=..0.1] add no_spawning
execute unless block ~ ~ ~ minecraft:air run tag @s add no_spawning
execute if entity @e[distance=..0.7,tag=!action_floor,type=!minecraft:item,type=!minecraft:experience_orb] run tag @s add no_spawning
scoreboard players reset #temp Stage
scoreboard players reset #temp ActionFloorNr