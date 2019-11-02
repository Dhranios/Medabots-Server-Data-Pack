function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/snowfield_d/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1572 51 -784 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1571 53 -817 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1571 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/snowfield_d/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.snowfield_d"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1573 53 -817 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/snowfield_d/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
