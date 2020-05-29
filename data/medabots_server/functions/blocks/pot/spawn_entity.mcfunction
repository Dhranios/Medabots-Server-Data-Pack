execute if entity @s[tag=cannon,tag=!no_ticking] positioned ~ ~0.375 ~ run function medabots_server:blocks/pot/cannon
execute if entity @s[tag=guard,tag=!no_ticking] positioned ~ ~0.375 ~ run function medabots_server:blocks/pot/guard
execute if entity @s[tag=bomb,tag=!no_ticking] positioned ~ ~0.375 ~ run function medabots_server:blocks/pot/bomb
execute if entity @s[tag=balloon_bomb,tag=!no_ticking] positioned ~ ~0.375 ~ run function medabots_server:spawn_entities/balloon_bomb
execute if entity @s[tag=jammy,tag=!no_ticking] positioned ~ ~0.375 ~ run function medabots_server:set_blocks/jammy
