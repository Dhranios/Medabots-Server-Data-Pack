execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1571 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] run setblock -1571 53 -817 minecraft:red_wool
execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] run data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_d/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=32,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=32}] Stage

execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @a[scores={Stage=32,Gamemode=0,StageIndex=-1},limit=1] if entity @s[tag=valid_tinpet,scores={Dialog=0}] run function medabots_server:stage/join/snowfield_d/join
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet