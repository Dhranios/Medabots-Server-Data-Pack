function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_6/empty
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/lagdou_ruins_6/try_to_complete
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1236 51 -99 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1235 53 -141 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1235 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/lagdou_ruins_6/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1237 53 -141 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_6/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
