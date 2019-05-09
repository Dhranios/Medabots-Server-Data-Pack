execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1672 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1672 53 -181 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1659 37 -141
execute if entity @s[tag=-1] run data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1674 53 -181 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1672 53 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/jungle_a/second_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0