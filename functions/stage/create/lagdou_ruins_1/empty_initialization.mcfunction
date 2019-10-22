function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
tag @s add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_1/empty
execute if entity @s[tag=vs_cpus] positioned -1271 36 -72 rotated -180 0 run function medabots_server:stage/create/lagdou_ruins_1/random_cpu
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1298 51 -87 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1297 53 -117 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1297 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/lagdou_ruins_1/empty/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins_1"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1299 53 -117 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_1/empty/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
