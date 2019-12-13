function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/snowfield_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/snowfield_d/try_to_create
execute if entity @s[tag=!vs_cpus] run teleport @s -1572 51 -784 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1571 53 -817 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1571 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/snowfield_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1573 53 -817 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/snowfield_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
