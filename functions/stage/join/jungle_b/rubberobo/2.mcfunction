execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
tellraw @s[tag=valid_tinpet,scores={Dialog=0}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.jungle_b"}]}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run data merge block -1619 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run setblock -1619 53 -479 minecraft:red_wool
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run setblock -1621 53 -479 minecraft:red_wool
tag @s[tag=valid_tinpet,scores={Dialog=0}] add enemy_medabot
tag @s[tag=valid_tinpet,scores={Dialog=0}] add 1
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:stage/create/jungle_b/rubberobo
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:gamemodes/default/set_stats
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet