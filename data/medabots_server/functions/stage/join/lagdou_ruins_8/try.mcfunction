execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run data merge block 30 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run setblock 30 60 1 minecraft:air
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run data merge block 28 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_8/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=43,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=43}] Stage

execute if entity @s[gamemode=adventure,nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @a[scores={Stage=43,Gamemode=0,StageIndex=-1},limit=1] if entity @s[gamemode=adventure,tag=valid_tinpet,scores={Dialog=0,Level=40..},advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true}] run function medabots_server:stage/join/lagdou_ruins_8/join
tellraw @s[gamemode=adventure,scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[gamemode=adventure,tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute unless entity @s[scores={Level=40..}] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_8.0"}]}
execute unless entity @s[advancements={medabots_server:stages/wave_1/lagdou_ruins_7_second_go=true}] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_8.1"}]}
tag @s remove valid_tinpet