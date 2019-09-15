function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_a/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1772 50 -285 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1771 51 -323 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_out_a"},{"text":"3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1773 52 -323 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1773 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_a/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
