function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_a/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1809 51 -587 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1808 53 -635 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1808 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/park_a/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.park","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1810 53 -635 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_a/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
