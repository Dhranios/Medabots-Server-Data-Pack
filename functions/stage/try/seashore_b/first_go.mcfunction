execute if entity @s[advancements={medabots_server:stages/wave_1/seashore_b_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/jungle_b_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.seashore_b.first_go.0"}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/seashore_b_first_go=true,medabots_server:main/mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.requires.not_matching","with":[{"translate":"medabots_server:message.stage.requirements.seashore_b.first_go.1"}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/seashore_b_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:stages/wave_1/jungle_b_first_go=true}] unless entity @s[advancements={medabots_server:stages/wave_1/seashore_b_first_go=true,medabots_server:main/mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/seashore_b/first_go_initialization