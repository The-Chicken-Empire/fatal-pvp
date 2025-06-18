$function buff:end/id {id:$(id)}


execute if data storage buff: temp[{duration:0}] run function buff:tick/execute3 with storage buff: temp[{duration:0}]

