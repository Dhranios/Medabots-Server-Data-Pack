tag @s add -1
tag @s add action_floors
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_battle/action_floors
execute if entity @s[tag=vs_cpus] positioned -1956 45 -551 run function medabots_server:stage/create/park_battle/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1949 51 -564 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1948 53 -591 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1948 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/park_battle/action_floors/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.park_battle"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1950 53 -591 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_battle/action_floors/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
