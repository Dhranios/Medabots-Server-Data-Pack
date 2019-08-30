function medabots_server:gamemodes/default/set_stats
tag @s add -1
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/paradise_a/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1714 51 -683 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1713 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"9"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1715 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/paradise_a/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
