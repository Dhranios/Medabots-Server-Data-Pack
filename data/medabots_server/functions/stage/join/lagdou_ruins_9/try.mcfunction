execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1287 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] run setblock -1287 53 -281 minecraft:red_wool
execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_9/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=44,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=44}] Stage

execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @a[scores={Stage=44,Gamemode=0,StageIndex=-1},limit=1] if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:stage/join/lagdou_ruins_9/join
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet