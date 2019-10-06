function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 3
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_a/rubberobo
execute if entity @s[tag=!vs_cpus] run teleport @s -1683 50 -259 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1680 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1682 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/ruins_in_a/rubberobo/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_out_a"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1685 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1683 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_a/rubberobo/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
