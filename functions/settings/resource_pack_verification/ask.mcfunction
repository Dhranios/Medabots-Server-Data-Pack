execute unless entity @s[scores={Verified=3}] run tellraw @s {"translate":"%1$s","with":[{"text":"Sorry, this server requires you to use a resource pack.","color":"red","extra":[{"text":"\nPlease download the resouce pack ","color":"gold"},{"text":"here","color":"green","clickEvent":{"action":"open_url","value":"http://www.mediafire.com/file/z3o8rlz39ate4cl/Medabots+Resource+Pack+0.7.0.zip"}},{"text":", and log back in to the server with the resource pack turned on.","color":"gold"}]},{"translate":"medabots_server:message.validate_resource_pack","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Verified set 2"}}]}
execute unless entity @s[scores={Verified=3}] run scoreboard players set @s Verified 1
execute if entity @s[scores={Verified=3}] run scoreboard players set @s Verified 2
tag @s[advancements={medabots_server:wave_1/root=true}] add returner
scoreboard players set @s Offline 0
scoreboard players set @s LeaveStage 0
scoreboard players set @s AFKTime 0