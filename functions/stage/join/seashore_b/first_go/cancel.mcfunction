execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1714 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1714 53 -445 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1712 37 -397 90 0
execute if entity @s[tag=-1] run data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/seashore_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1716 53 -444 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1762,y=51,z=-442,dx=94,dy=4,dz=94,tag=0] remove 0
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1714 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/seashore_b/first_go/0"}}'}
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0