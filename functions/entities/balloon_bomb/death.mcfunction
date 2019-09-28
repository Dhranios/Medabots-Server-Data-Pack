execute at @s run tag @e[distance=..0.4,tag=balloon_bomb,tag=!action_floor] add dead
tag @e[distance=..0.4,tag=balloon_bomb,tag=!action_floor] add dead
execute at @s run teleport @e[distance=..0.4,tag=balloon_bomb,tag=!action_floor] ~ -1000 ~
teleport @s ~ ~ ~
teleport @e[distance=..0.4,tag=balloon_bomb,tag=!action_floor] ~ -1000 ~
teleport @s[tag=balloon_bomb,tag=!action_floor] ~ -1000 ~
execute if entity @s[scores={ActionFloorNr=0..},tag=!burst] run function medabots_server:blocks/action_floor/reenable_spawning