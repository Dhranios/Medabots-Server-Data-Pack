bossbar set medabots_server:laboratory_a/time value 0
bossbar set medabots_server:laboratory_a/time players @s
scoreboard players set @s Battle 1
scoreboard players set @s Stage 9
stopsound @s music
playsound medabots_server:music.stage.laboratory_intro music @s ~ ~ ~ 1000
scoreboard players set @s Music 109
scoreboard players set @s MusicType 15
function medabots_server:stage/create/custom/builder
function medabots_server:gamemodes/default/set_stats