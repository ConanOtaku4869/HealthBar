advancement revoke @s only health_bar:tick

tag @s add health_bar.player
data modify storage health_bar: args set value {}
data modify storage health_bar: UUID set from entity @s UUID
data modify storage health_bar: args.id0 set from storage health_bar: UUID[0]
data modify storage health_bar: args.id1 set from storage health_bar: UUID[1]
data modify storage health_bar: args.id2 set from storage health_bar: UUID[2]
data modify storage health_bar: args.id3 set from storage health_bar: UUID[3]
execute store result storage health_bar: args.distance int 1 run scoreboard players get @s health_bar.distance
function health_bar:bossbar/tick with storage health_bar: args
tag @s remove health_bar.player