bossbar set medabots_server:park_a/time value 0
bossbar set medabots_server:park_a/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 19
stopsound @s music
playsound medabots_server:music.stage.park_intro music @s ~ ~ ~ 1000
scoreboard players set @s Music 160
scoreboard players set @s MusicType 16
function medabots_server:stage/create/custom/builder