execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
tellraw @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"5"}]}]}
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run data merge block -1345 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run setblock -1345 52 -230 minecraft:red_wool
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_5/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run setblock -1347 52 -230 minecraft:red_wool
tag @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] add enemy_medabot
scoreboard players set @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] StageVersion 1
tag @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] add 0
execute if entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet,advancements={medabots_server:stages/wave_1/lagdou_ruins_4_second_go=true}] run function medabots_server:stage/create/lagdou_ruins_5/empty
execute if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:gamemodes/default/set_stats
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet
execute unless entity @s[scores={Level=25..,Dialog=0},tag=valid_tinpet] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.level","with":[{"text":"25"}]}]}
execute unless entity @s[tag=valid_tinpet,scores={Dialog=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_4_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.more","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"4"}]},{"text":"2"}]}]}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet
