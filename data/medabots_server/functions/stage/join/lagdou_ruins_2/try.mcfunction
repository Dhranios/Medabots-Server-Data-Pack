execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] run data merge block 35 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] run setblock 35 63 -2 minecraft:air
execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}
execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] run data merge block 33 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_2/play"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] as @a[scores={Stage=37,Gamemode=0}] run function medabots_server:gamemodes/default/reset
execute unless entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] run scoreboard players reset @a[scores={Stage=37}] Stage

execute if entity @s[gamemode=adventure,nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
tellraw @s[gamemode=adventure,scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
tellraw @s[gamemode=adventure,tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[gamemode=adventure,tag=valid_tinpet] store result score @s MedabotLevel run data get entity @s SelectedItem.tag.medabots_server.items.medal.tag.medabots_server.xp.levels
execute unless entity @s[scores={MedabotLevel=10..}] run tellraw @s[gamemode=adventure,tag=valid_tinpet] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_2.0"}]}
execute unless entity @s[advancements={medabots_server:stages/wave_1/lagdou_ruins_1_second_go=true},tag=valid_tinpet] run tellraw @s[gamemode=adventure] {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.lagdou_ruins_2.1"}]}
execute if entity @a[scores={Stage=37,Gamemode=0,StageIndex=-1},limit=1] if entity @s[gamemode=adventure,tag=valid_tinpet,scores={Dialog=0,MedabotLevel=10..},advancements={medabots_server:stages/wave_1/lagdou_ruins_1_second_go=true}] run function medabots_server:stage/join/lagdou_ruins_2/join
tag @s remove valid_tinpet