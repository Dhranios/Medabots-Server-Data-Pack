function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/snowfield_b/special
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/snowfield_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1715 51 -492 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1714 53 -540 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1714 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/snowfield_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1716 53 -540 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1716 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/snowfield_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
