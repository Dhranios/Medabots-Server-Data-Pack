playsound medabots_server:music.map_beach_intro music @s[scores={MusicType=2}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=2}] Music 145
playsound medabots_server:music.stage.selection_intro music @s[scores={MusicType=4}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=4}] Music 42
playsound medabots_server:music.stage.mt_battle.stage_intro music @s[scores={MusicType=5}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=5}] Music 91
playsound medabots_server:music.stage.fly_course_intro music @s[scores={MusicType=6}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=6}] Music 127
playsound medabots_server:music.stage.rock_intro music @s[scores={MusicType=8}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=8}] Music 24
playsound medabots_server:music.stage.laboratory_intro music @s[scores={MusicType=15}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=15}] Music 109
playsound medabots_server:music.stage.park_intro music @s[scores={MusicType=16}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=16}] Music 160
playsound medabots_server:music.map_underground_intro music @s[scores={MusicType=22}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=22}] Music 176
playsound medabots_server:music.stage.pvp.ricco_harbor_intro music @s[scores={MusicType=24}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=24}] Music 30
execute if entity @s[scores={MusicType=26}] run function medabots_server:other/music/play/intro_robattle
playsound medabots_server:music.battle.rubberobo_leader_intro music @s[scores={MusicType=27}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=27}] Music 90
playsound medabots_server:music.edit_intro music @s[scores={MusicType=30}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=30}] Music 20
playsound medabots_server:music.medawatch_intro music @s[scores={MusicType=31}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=31}] Music 75
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={MusicType=32}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=32}] Music 62
playsound medabots_server:music.entity.select_corps_intro music @s[scores={MusicType=33}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=33}] Music 70
playsound medabots_server:music.entity.screws_intro music @s[scores={MusicType=35}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=35}] Music 62
playsound medabots_server:music.entity.koji_intro music @s[scores={MusicType=38}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=38}] Music 136
playsound medabots_server:music.entity.doctor_haru.evil_intro music @s[scores={MusicType=44}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=44}] Music 97
playsound medabots_server:music.entity.king_pharaoh_intro music @s[scores={MusicType=46}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=46}] Music 335
playsound medabots_server:music.map_welcome_underground_intro music @s[scores={MusicType=50}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=50}] Music 308

scoreboard players operation @s[scores={Music=0}] PrevMusicType = @s MusicType