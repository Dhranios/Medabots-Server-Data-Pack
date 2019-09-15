function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_b/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1620 50 -526 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1619 52 -572 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1619 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/ruins_in_b/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1621 52 -572 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_b/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
