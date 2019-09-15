function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/rock_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1603 51 -351 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1603 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/rock_b/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock_b"},{"text":"3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1605 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/rock_b/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
