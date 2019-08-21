function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add ally_medabot
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_6/darkness
execute if entity @s[tag=vs_cpus] positioned -1236 45 -135 run function medabots_server:stage/create/lagdou_ruins_6/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1236 51 -99 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1235 53 -141 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1235 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_6/darkness/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"6"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1237 53 -141 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_6/darkness/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
