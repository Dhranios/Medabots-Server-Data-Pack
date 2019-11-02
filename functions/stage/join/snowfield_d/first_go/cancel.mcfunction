execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.snowfield_d"}]}
execute if entity @s[tag=-1] run data merge block -1571 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1571 53 -817 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1569 37 -790 90 0
execute if entity @s[tag=-1] run data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/snowfield_d/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1573 53 -817 minecraft:red_wool
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1