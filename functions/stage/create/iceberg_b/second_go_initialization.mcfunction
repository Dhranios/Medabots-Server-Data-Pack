function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1795 50 -394 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1794 52 -440 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_b/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg_b"},{"text":"4"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1796 52 -439 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1796 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_b/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
