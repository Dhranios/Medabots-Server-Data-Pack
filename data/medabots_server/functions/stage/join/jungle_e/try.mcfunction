execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1909 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] run setblock -1909 53 -249 minecraft:red_wool
execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1907 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_e/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=54,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=54}] Stage

execute if entity @s[gamemode=adventure,nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @a[scores={Stage=54,Gamemode=0,StageIndex=-1},limit=1] if entity @s[gamemode=adventure,tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:stage/join/jungle_e/join
tellraw @s[gamemode=adventure,scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[gamemode=adventure,tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet