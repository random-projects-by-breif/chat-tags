local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer 
local r, g, b = 150, 0, 255 
local ChatTagText = "[Mobile eww - delta user]" 
TextChatService.OnIncomingMessage = function(message: TextChatMessage)
    if message.TextSource then
        if message.TextSource.UserId == LocalPlayer.UserId then
            local props = Instance.new("TextChatMessageProperties")
            props.PrefixText = string.format(
                "<font color='rgb(%d,%d,%d)'>%s</font> %s",
                r, g, b, ChatTagText, message.PrefixText or ""
            )
            return props
        end
    end
    return nil
end
