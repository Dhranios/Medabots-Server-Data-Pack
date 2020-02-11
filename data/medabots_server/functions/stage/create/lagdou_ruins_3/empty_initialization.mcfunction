function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_3/empty
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/lagdou_ruins_3/try_to_complete
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1227 51 -19 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1294 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1226 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/lagdou_ruins_3/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1228 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_3/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
