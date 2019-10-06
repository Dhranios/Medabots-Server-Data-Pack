function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/snowfield_b/special
execute if entity @s[tag=!vs_cpus] run teleport @s -1715 51 -492 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1714 53 -540 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1714 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/snowfield_b/special/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.snowfield_b"},{"text":"5"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1716 53 -540 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1716 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/snowfield_b/special/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
