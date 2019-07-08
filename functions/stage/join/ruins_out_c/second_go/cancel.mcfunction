execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"C"}]}]}
execute if entity @s[tag=-1] run data merge block -1634 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1634 52 -705 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1630 29 -671 90 0
execute if entity @s[tag=-1] run data merge block -1636 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_out_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1636 52 -705 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1665,y=50,z=-703,dx=62,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"C"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1634 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_c/second_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0