stopsound @s music
playsound medabots_server:music.stage.stage_end music @s ~ ~ ~ 1000
scoreboard players set @s Battle 0
scoreboard players set @s PrevMusicType 0
scoreboard players set @s MusicType 1
scoreboard players set @s[scores={Stage=23..29}] MusicType 22
scoreboard players set @s Music 299
scoreboard players reset @s Stage
teleport @s ~ ~ ~ -180 0
tag @s remove story_battle
tag @s remove clear_stage
tag @s remove main
function medabots_server:gamemodes/default/reset