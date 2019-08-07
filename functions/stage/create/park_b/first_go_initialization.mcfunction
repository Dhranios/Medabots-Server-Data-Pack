tag @s add -1
tag @s add first_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_b/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1811 51 -683 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1810 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1810 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/park_b/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.park","with":[{"text":"B"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1812 53 -730 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_b/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
