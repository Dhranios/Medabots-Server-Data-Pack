execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1539 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[tag=-1] run setblock -1539 53 -416 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1530 37 -370
execute if entity @s[tag=-1] run data merge block -1541 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/grassland_b/enter\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[tag=-1] run setblock -1541 53 -416 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] remove 1
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] run data merge block -1539 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/grassland_b/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=0] if entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] run data merge block -1539 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/grassland_b/1\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=0] run tag @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1570,y=51,z=-414,dx=62,dy=4,dz=95,tag=1] remove 1
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=1] run data merge block -1539 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/grassland_b/second_go/1\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=1] run tag @s remove 1