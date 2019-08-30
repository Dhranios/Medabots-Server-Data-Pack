function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_2/empty
execute if entity @s[tag=vs_cpus] positioned -1266 41 -9 run function medabots_server:stage/create/lagdou_ruins_2/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1295 51 -32 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1294 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1294 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_2/empty/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"2"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1296 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1296 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_2/empty/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
