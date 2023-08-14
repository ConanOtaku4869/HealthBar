data modify storage health_bar: args set value {}
data modify storage health_bar: UUID set from entity @s UUID
data modify storage health_bar: args.id0 set from storage health_bar: UUID[0]
data modify storage health_bar: args.id1 set from storage health_bar: UUID[1]
data modify storage health_bar: args.id2 set from storage health_bar: UUID[2]
data modify storage health_bar: args.id3 set from storage health_bar: UUID[3]
function health_bar:bossbar/add with storage health_bar: args
execute unless score @s health_bar.distance = @s health_bar.distance run scoreboard players set @s health_bar.distance 20