execute unless entity @s[advancements={medabots_server:stages/wave_1/ruins_in_d_first_go=false},tag=!vs_cpus] if entity @s[advancements={medabots_server:special_items/passes/ruins_in_d=true}] if entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"wheel"}}}]}] run function medabots_server:stage/create/ruins_in_d/first_go_initialization
execute if entity @s[advancements={medabots_server:stages/wave_1/ruins_in_d_first_go=false},tag=!vs_cpus] run tellraw @s {"translate":"medabots_server:message.stage.clear_before_players"}
execute unless entity @s[advancements={medabots_server:special_items/passes/ruins_in_d=true}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:advancements.special_items.passes.ruins_in_d"}]}
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"wheel"}}}]}] run tellraw @s {"translate":"medabots_server:message.stage.not_matching_requirement","extra":[{"translate":"medabots_server:message.stage.requires.medapart","with":[{"translate":"medabots_server:move.wheel"}]}]}
