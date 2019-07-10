tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1812 51 -489 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1812 53 -537 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1812 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_b/second_go/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1814 53 -537 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1814 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_b/second_go/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
