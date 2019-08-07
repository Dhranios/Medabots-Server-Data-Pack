tag @s add -1
tag @s add first_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/boxer/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1890 50 -571 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1889 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1889 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/boxer/first_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.boxer"},{"text":"8"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1891 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/boxer/first_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
