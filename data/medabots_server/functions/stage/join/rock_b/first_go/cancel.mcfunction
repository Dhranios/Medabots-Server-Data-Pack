execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.rock_b"}]}
execute if entity @s[tag=-1] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1603 53 -384 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1605 37 -346 90 0
execute if entity @s[tag=-1] run data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/rock_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1605 53 -384 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] remove 1
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock_b"},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/rock_b/first_go/0"}}'}
execute if entity @s[tag=0] if entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock_b"},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/rock_b/first_go/1"}}'}
execute if entity @s[tag=0] run tag @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1636,y=51,z=-382,dx=63,dy=4,dz=63,tag=1] remove 1
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock_b"},{"text":"2"}]}
execute if entity @s[tag=1] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/rock_b/first_go/1"}}'}
execute if entity @s[tag=1] run scoreboard players set @s Battle 0
execute if entity @s[tag=1] run tag @s remove 1