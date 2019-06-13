execute unless entity @s[advancements={medabots_server:stages/wave_1/park_a_second_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:stages/wave_1/park_a_first_go=true}] if entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"two_legged"}}}]}] run function medabots_server:stage/create/park_a/second_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/park_a_second_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:stages/wave_1/park_a_first_go=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.wins.1.version","with":[{"translate":"medabots_server:location.park","with":[{"text":"A"}]},{"translate":"medabots_server:sign.stage.version.first_go"}]}]}
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"two_legged"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart","with":[{"translate":"medabots_server:move.two_legged"}]}]}