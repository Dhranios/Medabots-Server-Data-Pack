execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.snowfield","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1619 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1619 53 -249 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1604 37 -222 90 0
execute if entity @s[tag=-1] run data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/snowfield_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1621 53 -249 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1668,y=51,z=-247,dx=105,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.snowfield","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1619 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/snowfield_a/first_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0