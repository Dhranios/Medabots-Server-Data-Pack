function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/seashore_b/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1715 51 -396 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1714 53 -444 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1714 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/seashore_b/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.seashore_b"},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1716 53 -444 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/seashore_b/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
