execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
tellraw @s[tag=valid_tinpet,scores={Dialog=0}] {"translate":"medabots_server:message.stage.player.mandatory","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.rock_e"},{"text":"9"}]}
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run data merge block -1859 52 -345 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/rock_e/dev_ultimategold/1"}}'}
tag @s[tag=valid_tinpet,scores={Dialog=0}] add enemy_medabot
tag @s[tag=valid_tinpet,scores={Dialog=0}] add 0
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:gamemodes/default/set_stats
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet