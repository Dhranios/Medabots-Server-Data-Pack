execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.park_a"}]}
execute if entity @s[tag=-1] run data merge block -1808 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1808 53 -635 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1659 37 -142 90 0
execute if entity @s[tag=-1] run data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1810 53 -635 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1854,y=51,z=-633,dx=91,dy=4,dz=94,tag=0] remove 0
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.park_a"},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1808 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/park_a/special/0"}}'}
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0