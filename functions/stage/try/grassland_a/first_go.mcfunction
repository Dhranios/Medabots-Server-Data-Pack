execute if entity @s[advancements={medabots_server:story_progression/infinity={opening_battle=true}}] unless entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"wave"}}}}}}}}] if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"float"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] unless entity @s[advancements={medabots_server:stages/wave_1/grassland_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run function medabots_server:stage/create/grassland_a/first_go
execute unless entity @s[advancements={medabots_server:story_progression/infinity={opening_battle=true}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.battle.at","with":[{"translate":"medabots_server:entity.erika"},{"translate":"medabots_server:location.woods_battle"}]}]}
execute if entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"anti_fly"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"gatling"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"laser"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"missile"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"napalm"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"rifle"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"sacrifice"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:kabuto_medal"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{move:"wave"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{move:"wave"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart.any_of","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:move.anti_fly","extra":[{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.gatling"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.laser"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.missile"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.napalm"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.rifle"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.sacrifice"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.kabuto_medal"},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:move.wave"}]}}}]}
execute unless entity @s[nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"float"}}}}}}}},nbt=!{SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{move:"fly"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart.none_of","hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:move.float","extra":[{"translate":"medabots_server:message.stage.requires.nor"},{"translate":"medabots_server:move.fly"}]}}}]}
execute if entity @s[advancements={medabots_server:stages/wave_1/grassland_a_first_go=true,medabots_server:mt_battle/medabot_vs_megabot=false}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.0.version","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]},{"translate":"medabots_server:message.stage.requires.or"},{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.mt_battle"},{"translate":"medabots_server:sign.stage.version.other.wave","with":[{"text":"1"}]}]}]}
execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tellraw @s {"translate":"medabots_server:message.tinpet.not_valid"}