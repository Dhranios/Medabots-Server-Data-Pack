tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1795 50 -419 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1794 52 -439 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1794 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"4"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1796 52 -437 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1796 51 -435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_b/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
