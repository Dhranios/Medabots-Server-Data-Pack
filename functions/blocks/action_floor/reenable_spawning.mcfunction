execute store result score #temp ActionFloorNr run scoreboard players get @s ActionFloorNr
execute as @e[tag=action_floor] if score @s ActionFloorNr = #temp ActionFloorNr run tag @s remove entity_exists
scoreboard players reset #temp ActionFloorNr