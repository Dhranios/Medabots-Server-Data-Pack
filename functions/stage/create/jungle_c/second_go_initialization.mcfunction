function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_c/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1541 50 -515 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -547 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/jungle_c/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle_c"},{"text":"3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1542 52 -547 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_c/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
