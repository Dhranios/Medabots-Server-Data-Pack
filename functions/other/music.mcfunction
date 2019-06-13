# Change hub music to normal, beach or sea
execute if entity @s[scores={MusicType=1..3}] run function medabots_server:other/music/hub 

# Cooldown
scoreboard players remove @s[scores={Music=1..}] Music 1

# Stop any music if the cooldown is 0
stopsound @s[scores={Music=0}] music
stopsound @s[scores={MusicType=-1}] music medabots_server:music.stage.stage_end

# Play music
execute if entity @s[scores={Music=0,MusicType=1..}] run function medabots_server:other/music/play