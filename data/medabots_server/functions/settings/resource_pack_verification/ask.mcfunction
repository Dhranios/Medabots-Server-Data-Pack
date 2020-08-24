execute unless entity @s[scores={Verified=3}] run tellraw @s {"translate":"%1$s","with":[{"text":"Sorry, this server requires you to use a resource pack.","color":"red","extra":[{"text":"\nPlease download the resouce pack ","color":"gold"},{"text":"here","color":"green","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/s93mvb2o5942z3h/Medabots+Resource+Pack+0.7.8.zip/file"}},{"text":", and log back in to the server with the resource pack turned on.","color":"gold"}]},{"translate":"medabots_server:message.validate_resource_pack","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Verified set 2"}}]}
execute unless entity @s[scores={Verified=3}] run scoreboard players set @s Verified 1
execute if entity @s[scores={Verified=3}] run scoreboard players set @s Verified 2
tag @s[advancements={medabots_server:main/root=true}] add returner
scoreboard players set @s Offline 0
scoreboard players set @s LeaveStage 1
scoreboard players set @s AFKTime 0

# Please don't log out while in combat
tellraw @s[scores={Gamemode=0,State=1..2}] {"translate":"medabots_server:message.anti_cheating.log","color":"red"}
execute if entity @s[scores={Gamemode=0,State=1..2}] run tellraw @a[team=Moderator] {"translate":"medabots_server:message.anti_cheating.log.mod","color":"red","with":[{"selector":"@s"}]}
scoreboard players add @s[scores={Gamemode=0,State=1..2}] Warning 1
execute if entity @s[scores={Gamemode=0,State=3}] run function medabots_server:gamemodes/default/reset

