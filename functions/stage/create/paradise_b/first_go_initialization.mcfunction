function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/paradise_b/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1634 51 -608 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1633 53 -640 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1633 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/paradise_b/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise_b"},{"text":"5"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1635 53 -640 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1635 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/paradise_b/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
