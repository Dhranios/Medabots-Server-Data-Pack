# Change hub music to normal, beach or sea
execute if entity @s[scores={MusicType=1..3}] run function medabots_server:other/music/hub 

# Cooldown
scoreboard players remove @s[scores={Music=1..}] Music 1

# Stop any music if the cooldown is 0
stopsound @s[scores={Music=0}] music

# Play music
execute if entity @s[scores={Music=0}] run function medabots_server:other/music/play

scoreboard players operation @s[scores={Music=0}] PrevMusicType = MusicType