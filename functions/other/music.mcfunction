# Cooldown
scoreboard players remove @s[scores={Music=1..}] Music 1

# Stop any music if the cooldown is 0
stopsound @s[scores={Music=0}] music

# Play music
execute unless entity @s[scores={Level=0..}] run playsound medabots_server:music.map_overworld music @s[scores={Music=0,MusicType=1}] ~ ~ ~ 1000
playsound medabots_server:music.map_overworld music @s[scores={Level=..59,Music=0,MusicType=1}] ~ ~ ~ 1000
playsound medabots_server:music.map_finished music @s[scores={Level=60..,Music=0,MusicType=1}] ~ ~ ~ 1000
execute unless entity @s[scores={Level=0..}] run scoreboard players set @s[scores={Music=0,MusicType=1}] Music 1256
scoreboard players set @s[scores={Level=..59,Music=0,MusicType=1}] Music 1256
scoreboard players set @s[scores={Level=60..,Music=0,MusicType=1}] Music 1118
playsound medabots_server:music.map_beach music @s[scores={Music=0,MusicType=2}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=2}] Music 3820
playsound medabots_server:music.map_sea music @s[scores={Music=0,MusicType=3}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=3}] Music 2320
playsound medabots_server:music.stage.selection music @s[scores={Music=0,MusicType=4}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=4}] Music 384
playsound medabots_server:music.stage.mt_battle.stage music @s[scores={Music=0,MusicType=5}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=5}] Music 1095
playsound medabots_server:music.stage.fly_course music @s[scores={Music=0,MusicType=6}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=6}] Music 1815
playsound medabots_server:music.stage.plains music @s[scores={Music=0,MusicType=7}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=7}] Music 1000
playsound medabots_server:music.stage.rock music @s[scores={Music=0,MusicType=8}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=8}] Music 1300
playsound medabots_server:music.stage.jungle music @s[scores={Music=0,MusicType=9}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=9}] Music 1140
playsound medabots_server:music.stage.seashore music @s[scores={Music=0,MusicType=10}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=10}] Music 740
playsound medabots_server:music.stage.snowfield music @s[scores={Music=0,MusicType=11}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=11}] Music 1128
playsound medabots_server:music.stage.iceberg music @s[scores={Music=0,MusicType=12}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=12}] Music 1080
playsound medabots_server:music.stage.ruins_out music @s[scores={Music=0,MusicType=13}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=13}] Music 1673
playsound medabots_server:music.stage.ruins_in music @s[scores={Music=0,MusicType=14}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=14}] Music 827
playsound medabots_server:music.stage.laboratory music @s[scores={Music=0,MusicType=15}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=15}] Music 1371
playsound medabots_server:music.stage.park music @s[scores={Music=0,MusicType=16}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=16}] Music 795
playsound medabots_server:music.stage.paradise music @s[scores={Music=0,MusicType=17}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=17}] Music 889
playsound medabots_server:music.stage.under_stage music @s[scores={Music=0,MusicType=18}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=18}] Music 1052
playsound medabots_server:music.stage.pvp.lagdou_ruins1 music @s[scores={Music=0,MusicType=19}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=19}] Music 1500
playsound medabots_server:music.stage.pvp.lagdou_ruins2 music @s[scores={Music=0,MusicType=20}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=20}] Music 1600
playsound medabots_server:music.stage.boxer music @s[scores={Music=0,MusicType=21}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=21}] Music 1666
playsound medabots_server:music.map_underground music @s[scores={Music=0,MusicType=22}] ~ ~ ~ 1000
scoreboard players set @s[scores={Music=0,MusicType=22}] Music 1233