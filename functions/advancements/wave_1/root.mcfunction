experience add @s -10000 levels
clear @s
tellraw @s {"text":"Are you only here with a fly course/race invitation? Then we suggest to download this resource pack for sounds and translation strings only.","color":"gold","clickEvent":{"action":"open_url","value":"http://download947.mediafire.com/7ox8w3ju10ig/1u0a93uqw607h9u/elytra+course.zip"},"hoverEvent":{"action":"show_text","value":{"text":"Click me"}}}
tellraw @s ""
tellraw @s {"translate":"medabots_server:message.welcome","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:settings.resource_pack","color":"gold"},{"text":" 0.6.5. ","color":"gold"},{"translate":"medabots_server:settings.resource_pack.download","color":"green","clickEvent":{"action":"open_url","value":"http://adf.ly/1N89Z1"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.resource_pack.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.1","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 1"},"hoverEvent":{"action":"show_text","Value":{"translate":"medabots_server:settings.click.click"}}}]}
scoreboard players reset @s
team leave @s[team=MtBattleMaster]
tag @s[tag=!action_mode] add action_mode
scoreboard players set @s UpToDate 1
scoreboard players set @s Jump 0
scoreboard players set @s Walk 0
scoreboard players set @s Run 0
scoreboard players set @s Swimming 0
scoreboard players set @s Drop 0
scoreboard players set @s Boat 0
scoreboard players set @s Flying 0
scoreboard players set @s Minecart 0
scoreboard players set @s Horse 0
scoreboard players set @s WalkOnWater 0
scoreboard players set @s WalkUnderWater 0
scoreboard players set @s Pig 0
scoreboard players set @s Fall 0
scoreboard players set @s Sneaking 0
scoreboard players set @s Attack 0
scoreboard players set @s Offline 0
scoreboard players set @s Sound 0
scoreboard players set @s Question 0
scoreboard players set @s MedabotMet 0
scoreboard players set @s Message 0
scoreboard players set @s Medabot 0
scoreboard players set @s Death 0
scoreboard players set @s Battle 0
scoreboard players set @s UsePart 0
scoreboard players set @s Time 1
scoreboard players set @s Medaforce 0
scoreboard players set @s MedaforceTimer 0
scoreboard players set @s Charge 0
scoreboard players set @s Float 0
scoreboard players set @s Fly 0
scoreboard players set @s FlyTime 0
scoreboard players set @s[team=Moderator] Moderator 1
scoreboard players set @s[team=!Moderator] Moderator 0
scoreboard players set @s StreetPassHits 0
scoreboard players set @s StreetPassCool 0
scoreboard players set @s StreetPassTime 0
experience add @s 1 levels
experience add @s -1 levels
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true
replaceitem entity @s hotbar.5 minecraft:written_book{pages:["{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.read_me_book.page.1.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.read_me_book.page.1.2\"}]}"],author:"FVbico",title:"Read Me",HideFlags:32,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.title\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.author\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.pages\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.version\",\"with\":[{\"text\":\"16-4-2017\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop_to_kill\"}"]},medabots_server:{id:"medabots_server:read_me_book",kill:1b,version:"16-4-2017"}}
function medabots_server:give_medaparts/saikachis
function medabots_server:give_medals/kabuto
function medabots_server:give_tinpet/male
stopsound @s music
teleport @s -286 55 -52.0 -90 0
playsound medabots_server:music.intro music @s -298 55 -52 30
scoreboard players set @s Music 2960
scoreboard players set @s MusicType 1
spawnpoint @s -286 55 -52