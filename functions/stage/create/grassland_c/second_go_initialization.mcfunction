function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_c/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1539 50 -449 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1538 52 -482 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1538 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_c/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.grassland_c"},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -482 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_c/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
