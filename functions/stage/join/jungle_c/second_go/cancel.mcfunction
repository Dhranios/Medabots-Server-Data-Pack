execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.jungle_c"}]}
execute if entity @s[tag=-1] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1540 52 -547 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1537 29 -512 90 0
execute if entity @s[tag=-1] run data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1542 52 -547 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] remove 1
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] if entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle_c"},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_c/second_go/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle_c"},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_c/second_go/0"}}'}
execute if entity @s[tag=0] run tag @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1570,y=50,z=-545,dx=62,dy=4,dz=62,tag=1] remove 1
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle_c"},{"text":"2"}]}
execute if entity @s[tag=1] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_c/second_go/0"}}'}
execute if entity @s[tag=1] run scoreboard players set @s Battle 0
execute if entity @s[tag=1] run tag @s remove 1