bossbar set medabots_server:laboratory_b/time value 0
bossbar set medabots_server:laboratory_b/time players @s
function medabots_server:gamemodes/default/set_stats
scoreboard players set @s Battle 1
scoreboard players set @s Stage 18
stopsound @s music
playsound medabots_server:music.stage.laboratory_intro music @s ~ ~ ~ 1000
scoreboard players set @s Music 109
scoreboard players set @s MusicType 15
function medabots_server:stage/create/custom/builder