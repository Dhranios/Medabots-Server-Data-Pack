# Change hub music to normal, beach or sea
execute if entity @s[scores={MusicType=1..3},tag=!listening_to_music_box] run function medabots_server:other/music/hub 

# Cooldown
scoreboard players remove @s[scores={Music=1..}] Music 1

# Play music
execute unless entity @s[scores={Jukebox=1..}] if entity @s[scores={Music=0}] run function medabots_server:other/music/play
execute if entity @s[scores={Jukebox=1..,Music=0}] run function medabots_server:other/music/play_jukebox