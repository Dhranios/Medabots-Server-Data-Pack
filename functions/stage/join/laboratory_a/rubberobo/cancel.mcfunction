execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1773 52 -321 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1764 29 -290 90 0
execute if entity @s[tag=-1] run data merge block -1771 51 -323 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/laboratory_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1771 52 -323 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] remove 1
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/rubberobo/0"}}'}
execute if entity @s[tag=0] if entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/rubberobo/1"}}'}
execute if entity @s[tag=0] run tag @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1812,y=50,z=-322,dx=80,dy=4,dz=72,tag=1] remove 1
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=1] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/laboratory_a/rubberobo/1"}}'}
execute if entity @s[tag=1] run scoreboard players set @s Battle 0
execute if entity @s[tag=1] run tag @s remove 1