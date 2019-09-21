execute at @e[type=minecraft:spider,tag=argorok,distance=..3] run tag @s add success
advancement grant @s[tag=success] only medabots_server:main/how_to_tame_the_twilight_dragon
advancement revoke @s[tag=!success] only medabots_server:main/how_to_tame_the_twilight_dragon_achieve tick
tag @s[tag=success] remove success