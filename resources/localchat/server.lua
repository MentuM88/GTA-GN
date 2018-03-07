AddEventHandler('chatMessage', function(source, name, message)
    splitmessage = stringsplit(message, " ");
    if string.lower(splitmessage[1]) == "/help" or string.lower(splitmessage[1]) == "/help" then
        CancelEvent()
        TriggerClientEvent('chatMessage', source, "Help 1: ", {255, 0, 0}, "/tweet /twitter - Ecrire un Tweet!")
        TriggerClientEvent('chatMessage', source, "Help 2: ", {255, 0, 0}, "/me - Ecrire en hors de son corps")
        TriggerClientEvent('chatMessage', source, "Help 6: ", {255, 0, 0}, "Menus/Téléphone, appuyer sur K.")
    elseif string.lower(splitmessage[1]) == "/ooc" or string.lower(splitmessage[1]) == "/OOC" then
        CancelEvent()
        TriggerClientEvent('chatMessage', -1, "[OOC] ^0" .. name, {0, 172, 237}, string.sub(message,string.len(splitmessage[1])+1))
   elseif string.lower(splitmessage[1]) == "/tweet" or string.lower(splitmessage[1]) == "/twitter" then
        CancelEvent()
        TriggerClientEvent('chatMessage', -1, "[TWITTER] ^0" .. name, {0, 172, 237}, string.sub(message,string.len(splitmessage[1])+1))
    elseif string.lower(splitmessage[1]) == "/test" or string.lower(splitmessage[1]) == "/test" then
        CancelEvent()
        TriggerClientEvent('chatMessage', -1, name, {0, 172, 237}, string.sub(message,string.len(splitmessage[1])+2))
    elseif string.lower(splitmessage[1]) == "/me" or string.lower(splitmessage[1]) == "/me" then
        CancelEvent()
        TriggerClientEvent('proximityMessage', -1, tonumber(source), "", {170, 102, 204}, 20, name .. " ** " .. string.sub(message,string.len(splitmessage[1])+1))
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end