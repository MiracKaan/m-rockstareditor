-- /editor command
-- Rockstar editor

RegisterCommand('editor', function(source, args)
    Citizen.Wait(0)
    if args[1] == "baslat" or args[1] == "kayit" then
        StartRecording(1)
    elseif args[1] == "iptal" then
        StopRecordingAndDiscardClip()
    elseif args[1] == "durdur" then
        StopRecordingAndSaveClip()
    elseif args[1] == "tekrar" then
        StartRecording(0)
    elseif args[1] == "ac" then
        NetworkSessionLeaveSinglePlayer()
        ActivateRockstarEditor()
    else
        return
    end
end)
TriggerEvent('chat:addSuggestion', '/' .. 'baslat, kayit, iptal, durdur, tekrar, ac')

