execute at @s run tag @e[distance=..0.4,tag=bomb,tag=!action_floor,tag=!pot] add dead
tag @e[distance=..0.4,tag=bomb,tag=!action_floor,tag=!pot] add dead
execute at @s run teleport @e[distance=..0.4,tag=bomb,tag=!action_floor,tag=!pot] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=bomb,tag=!action_floor,tag=!pot] ~ -1000 ~
teleport @s[tag=bomb,tag=!action_floor,tag=!pot] ~ -1000 ~
execute if entity @s[scores={ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/reenable_spawning