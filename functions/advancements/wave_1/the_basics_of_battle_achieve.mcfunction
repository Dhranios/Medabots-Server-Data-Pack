advancement grant @s[scores={Level=2..}] only medabots_server:wave_1/the_basics_of_battle
advancement revoke @s[scores={Level=0..1}] only medabots_server:wave_1/the_basics_of_battle_achieve tick
execute unless entity @s[scores={Level=0..}] run advancement revoke @s only medabots_server:wave_1/the_basics_of_battle_achieve tick