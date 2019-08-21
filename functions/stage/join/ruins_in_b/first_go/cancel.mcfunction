execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1619 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1619 52 -574 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1614 29 -516 90 0
execute if entity @s[tag=-1] run data merge block -1621 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_in_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1621 52 -574 minecraft:red_wool
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1