execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"}]}
execute if entity @s[tag=-1] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1619 52 -574 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1614 29 -516 90 0
execute if entity @s[tag=-1] run data merge block -1621 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_in_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1621 52 -574 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] remove 1
execute if entity @s[tag=-1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] remove 2
execute if entity @s[tag=-1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] remove 3
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/3"}}'}
execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"3"}]}
execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/2"}}'}
execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"4"}]}
execute if entity @s[tag=0] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"5"}]}
execute if entity @s[tag=0] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/0"}}'}
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=1] remove 1
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] add 1
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] remove 2
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] add 2
execute if entity @s[tag=0] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] remove 3
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"2"}]}
execute if entity @s[tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/3"}}'}
execute if entity @s[tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"3"}]}
execute if entity @s[tag=1] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/2"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"4"}]}
execute if entity @s[tag=1] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/1"}}'}
execute if entity @s[tag=1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] add 1
execute if entity @s[tag=1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=2] remove 2
execute if entity @s[tag=1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] add 2
execute if entity @s[tag=1] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] remove 3
execute if entity @s[tag=1] run scoreboard players set @s Battle 0
execute if entity @s[tag=1] run tag @s remove 1

execute if entity @s[tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"2"}]}
execute if entity @s[tag=2] if entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/3"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"3"}]}
execute if entity @s[tag=2] unless entity @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/2"}}'}
execute if entity @s[tag=2] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] add 2
execute if entity @s[tag=2] run tag @a[x=-1666,y=50,z=-572,dx=92,dy=4,dz=92,tag=3] remove 3
execute if entity @s[tag=2] run scoreboard players set @s Battle 0
execute if entity @s[tag=2] run tag @s remove 2

execute if entity @s[tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"text":"2"}]}
execute if entity @s[tag=3] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/dev_fvbico/3"}}'}
execute if entity @s[tag=3] run scoreboard players set @s Battle 0
execute if entity @s[tag=3] run tag @s remove 3