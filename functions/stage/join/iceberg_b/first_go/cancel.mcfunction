execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1794 52 -440 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1785 29 -392 90 0
execute if entity @s[tag=-1] run data merge block -1796 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/iceberg_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1796 52 -439 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] remove 1
execute if entity @s[tag=-1] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] remove 2
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/2"}}'}
execute if entity @s[tag=0] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=0] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"4"}]}
execute if entity @s[tag=0] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/0"}}'}
execute if entity @s[tag=0] run tellraw @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=0] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=1] remove 1
execute if entity @s[tag=0] run tellraw @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] {"translate":"medabots_server:message.stage.player.mandatory.changed","color":"green"}
execute if entity @s[tag=0] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] add 1
execute if entity @s[tag=0] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] remove 2
execute if entity @s[tag=0] run scoreboard players set @s Battle 0
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=1] if entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/2"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"3"}]}
execute if entity @s[tag=1] unless entity @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/1"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] {"translate":"medabots_server:message.stage.player.mandatory.changed","color":"green"}
execute if entity @s[tag=1] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] add 1
execute if entity @s[tag=1] run tag @a[x=-1824,y=50,z=-438,dx=60,dy=4,dz=90,tag=2] remove 2
execute if entity @s[tag=1] run scoreboard players set @s Battle 0
execute if entity @s[tag=1] run tag @s remove 1

execute if entity @s[tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]},{"text":"2"}]}
execute if entity @s[tag=2] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_b/first_go/2"}}'}
execute if entity @s[tag=2] run scoreboard players set @s Battle 0
execute if entity @s[tag=2] run tag @s remove 2