execute if entity @s[advancements={medabots_server:stages/wave_1/laboratory_c_first_go=true}] run function medabots_server:stage/create/boxer/first_go_initialization
execute unless entity @s[advancements={medabots_server:stages/wave_1/laboratory_c_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"C"}]}]}]}