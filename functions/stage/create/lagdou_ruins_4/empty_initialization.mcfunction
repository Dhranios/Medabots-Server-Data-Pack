tag @s add -1
tag @s add empty
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_4/empty
execute if entity @s[tag=vs_cpus] positioned -1369 45 -186 run function medabots_server:stage/create/lagdou_ruins_4/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1345 51 -127 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1344 53 -135 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1344 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_4/empty/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"4"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1346 53 -135 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1346 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_4/empty/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
