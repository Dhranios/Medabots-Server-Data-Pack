tag @s add -1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_a/first_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1570 51 -284 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1569 52 -317 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1569 52 -315 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_a/first_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1571 52 -317 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1571 52 -315 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/ruins_out_a/first_go/cancel\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancel\"}"}
