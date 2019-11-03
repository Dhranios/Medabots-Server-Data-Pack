fill ~ ~ ~ ~ ~2 ~ minecraft:air
function medabots_server:blocks/put_block_back
execute as @e[scores={ActionFloorNr=1..}] if score @s ActionFloorNr > @e[distance=..0.7,tag=action_floor,limit=1] ActionFloorNr run scoreboard players remove @s ActionFloorNr 1