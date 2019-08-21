function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_c/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1541 50 -648 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -687 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -685 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/iceberg_c/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"C"}]},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1542 52 -686 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_c/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
