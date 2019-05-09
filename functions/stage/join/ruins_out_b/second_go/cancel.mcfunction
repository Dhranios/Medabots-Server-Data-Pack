execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1811 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1811 53 -538 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1808 37 -477
execute if entity @s[tag=-1] run data merge block -1813 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_out_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1813 53 -538 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1858,y=51,z=-536,dx=94,dy=4,dz=95,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1811 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_b/second_go/0"}}'}
execute if entity @s[tag=0] run tag @s remove 0