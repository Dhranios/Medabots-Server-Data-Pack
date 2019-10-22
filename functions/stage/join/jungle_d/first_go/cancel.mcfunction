execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.jungle_d"}]}
execute if entity @s[tag=-1] run data merge block -1634 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1634 53 -770 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1631 37 -733 90 0
execute if entity @s[tag=-1] run data merge block -1636 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_d/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1636 53 -770 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1665,y=51,z=-767,dx=61,dy=4,dz=61,tag=0] remove 0
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.jungle_d"},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1634 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_d/first_go/0"}}'}
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0