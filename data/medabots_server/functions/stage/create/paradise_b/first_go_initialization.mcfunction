function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/paradise_b/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/paradise_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1634 51 -608 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1633 53 -640 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1633 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/paradise_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1635 53 -640 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1635 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/paradise_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
