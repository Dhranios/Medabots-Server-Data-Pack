execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1619 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1619 53 -479 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1619 37 -431 90 0
execute if entity @s[tag=-1] run data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1621 53 -479 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] remove 1
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] if entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run data merge block -1619 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_b/first_go/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] run data merge block -1619 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_b/first_go/0"}}'}
execute if entity @s[tag=0] run tag @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1666,y=51,z=-477,dx=94,dy=4,dz=92,tag=1] remove 1
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=1] run data merge block -1619 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_b/first_go/0"}}'}
execute if entity @s[tag=1] run tag @s remove 0