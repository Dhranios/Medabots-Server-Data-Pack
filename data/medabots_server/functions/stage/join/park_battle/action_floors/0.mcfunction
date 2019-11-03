execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
tellraw @s[tag=valid_tinpet,scores={Dialog=0}] {"translate":"medabots_server:message.stage.player.enemy"}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.park_battle"}]}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run data merge block -1948 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run setblock -1948 53 -591 minecraft:red_wool
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_battle/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run setblock -1950 53 -591 minecraft:red_wool
tag @s[tag=valid_tinpet,scores={Dialog=0}] add enemy_medabot
scoreboard players set @s[tag=valid_tinpet,scores={Dialog=0}] StageVersion 7
tag @s[tag=valid_tinpet,scores={Dialog=0}] add 0
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:gamemodes/default/set_stats
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:stage/create/park_battle/action_floors
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet