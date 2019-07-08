bossbar set medabots_server:rock_e/time value 0
bossbar set medabots_server:rock_e/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 53
stopsound @s music
playsound medabots_server:music.stage.rock_intro music @s ~ ~ ~ 1000
scoreboard players set @s Music 24
scoreboard players set @s MusicType 8
tag @s add custom
function medabots_server:stage/create/custom/builder