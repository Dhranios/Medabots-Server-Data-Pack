execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"D"}]}]}
execute if entity @s[tag=-1] run data merge block -1569 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1569 53 -752 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1567 37 -722 90 0
execute if entity @s[tag=-1] run data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/grassland_d/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1571 53 -752 minecraft:red_wool
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1