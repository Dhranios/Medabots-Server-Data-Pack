tag @s add -1
tag @s add second_go
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/rock_b/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1540 51 -367 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1603 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1603 52 -382 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/rock_b/second_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1605 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1605 52 -382 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/rock_b/second_go/cancel\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancel\"}"}
