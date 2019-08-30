execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1713 53 -732 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1709 37 -693 90 0
execute if entity @s[tag=-1] run data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/paradise_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1715 53 -732 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=0] remove 0
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] remove 1
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] remove 2
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] remove 3
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] remove 4
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=-1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 7
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"8"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/0"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"8"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/1"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"7"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/2"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"6"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/3"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"5"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/4"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=0] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=0] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=0] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] add 0
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=1] remove 1
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] add 1
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] remove 2
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] add 2
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] remove 3
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] add 3
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] remove 4
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] add 4
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=0] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=0] run tag @s remove 0

execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"8"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/1"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"7"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/2"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"6"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/3"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"5"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/4"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=1] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=1] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=1] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] add 1
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=2] remove 2
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] add 2
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] remove 3
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] add 3
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] remove 4
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] add 4
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=1] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=1] run tag @s remove 1

execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"7"}]}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/2"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"6"}]}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/3"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"5"}]}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/4"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=2] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=2] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=2] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] add 2
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=3] remove 3
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] add 3
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] remove 4
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] add 4
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=2] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=2] run tag @s remove 2

execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"6"}]}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/3"}}'}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"5"}]}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/4"}}'}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=3] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=3] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] add 3
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=4] remove 4
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] add 4
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=3] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=3] run tag @s remove 3

execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"5"}]}
execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/4"}}'}
execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=4] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=4] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=1] run tellraw @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] {"translate":"medabots_server:message.stage.player.optional.changed","color":"green"}
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] add 4
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=5] remove 5
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=4] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=4] run tag @s remove 4

execute if entity @s[tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"4"}]}
execute if entity @s[tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/5"}}'}
execute if entity @s[tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=5] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=5] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=5] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] add 5
execute if entity @s[tag=5] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=6] remove 6
execute if entity @s[tag=5] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=5] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=5] run tag @s remove 5

execute if entity @s[tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"3"}]}
execute if entity @s[tag=6] unless entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/6"}}'}
execute if entity @s[tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=6] if entity @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=6] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] add 6
execute if entity @s[tag=6] run tag @a[x=-1761,y=51,z=-730,dx=94,dy=4,dz=94,tag=7] remove 7
execute if entity @s[tag=6] run tag @s remove 6

execute if entity @s[tag=7] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=7] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/paradise_a/first_go/7"}}'}
execute if entity @s[tag=7] run tag @s remove 7