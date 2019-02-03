tag @s add -1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/boxer/second_go
execute if entity @s[tag=!vs_cpus] run teleport @s -1890 50 -571 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1889 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1889 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/boxer/second_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.boxer"},{"text":"8"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1891 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1891 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/boxer/second_go/cancle\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancle\"}"}
