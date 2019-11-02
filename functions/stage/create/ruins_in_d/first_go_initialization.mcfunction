function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_d/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1763 50 -755 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1761 52 -772 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1761 51 -770 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_d/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_d"},{"text":"5"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1764 52 -772 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1764 51 -770 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_d/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
