function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
tag @s add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_3/empty
execute if entity @s[tag=vs_cpus] positioned -1243 42 -51 rotated 0 0 run function medabots_server:stage/create/lagdou_ruins_3/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1227 51 -19 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1294 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1226 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_3/empty/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins_3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1228 53 -60 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_3/empty/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
