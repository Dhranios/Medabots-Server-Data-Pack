bossbar set medabots_server:rock_b/time value 0
bossbar set medabots_server:rock_b/time players @s
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats
tag @s add main
scoreboard players set @s Battle 1
scoreboard players set @s Stage 11
stopsound @s music
playsound medabots_server:music.stage.rock_intro music @s ~ ~ ~ 1000
scoreboard players set @s Music 24
scoreboard players set @s MusicType 8