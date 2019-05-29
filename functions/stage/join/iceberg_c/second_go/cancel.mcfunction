execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"C"}]}]}
execute if entity @s[tag=-1] run data merge block -1540 51 -685 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1540 52 -687 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1542 29 -651
execute if entity @s[tag=-1] run data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/iceberg_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1542 52 -686 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1570,y=50,z=-685,dx=60,dy=4,dz=74,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"C"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1540 51 -685 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_c/second_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0