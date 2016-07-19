--[[
  [ Copyright (c) 2014 User Froali from ESOUI.com
  [ All Rights Reserved. If you want to use parts of my AddOns for your own work, please contact me first!
  ]]

--CONSTANTS
TI.SETTINGS_ALL = 1
TI.SETTINGS_STATUS = 2
TI.SETTINGS_LEVEL = 3
TI.SETTINGS_MEMBER = 4


TI.SETTINGS_DISPLAY_LABEL_COUNT = 5

--CharName in Roster Settings

function TI.GetCharNameSettings()
	return TI.vars.ShowCharNames
end

function TI.SetCharNameSettings(newVal)
	TI.vars.ShowCharNames = newVal
	ReloadUI()
end

--Name Format Settings
function TI.GetNameFormatSettings()
	return TI.vars.NameFormat
end

function TI.SetNameFormatSettings(newVal)
	TI.vars.NameFormat = newVal
end

--Show Announcements Settings

function TI.GetGuildSettings()
	return TI.vars.ShowAnnouncements
end

function TI.SetGuildSettings(newVal)
	TI.vars.ShowAnnouncements = newVal
end

--Display Type Settings
function TI.GetDisplayTypeSettings()
	return TI.vars.DisplayType
end

function TI.SetDisplayTypeSettings(newVal)
	if(newVal == TI.SETTINGS_DISPLAY_TYPE_CHAT) then
		TI.displayControl:SetHidden(true)
        TI.vars.DisplayTypeChat = true
        TI.vars.DisplayTypeHUD = false
	else
		TI.displayControl:SetHidden(false)
    end

    if(newVal == TI.SETTINGS_DISPLAY_TYPE_LABEL) then
        TI.vars.DisplayTypeHUD = true
        TI.vars.DisplayTypeChat = false
    end

    if(newVal == TI.SETTINGS_DISPLAY_TYPE_BOTH) then
        TI.vars.DisplayTypeChat = true
        TI.vars.DisplayTypeHUD = true
    end

	TI.vars.DisplayType = newVal
end

function TI.GetDisplayType(setting)
    if(setting == TI.SETTINGS_DISPLAY_TYPE_CHAT) then
        return TI.vars.DisplayTypeChat
    elseif(setting == TI.SETTINGS_DISPLAY_TYPE_LABEL) then
        return TI.vars.DisplayTypeHUD
    end

end


function TI.GetDisplayMoveable()
	return TI.displayControl:IsMouseEnabled()
end

function TI.SetDisplayMoveable(newVal)
	TI.displayControl:SetMouseEnabled(newVal)
	TI.displayControl:SetMovable(newVal)
	TI.displayControlbackDrop:SetHidden(not newVal)
end

--Display Width Setting
function TI.GetDisplayWidth()
	return TI.vars.AnnounceDisplayWidth
end

function TI.SetDisplayWidth(newVal)
	TI.vars.AnnounceDisplayWidth = newVal
	TI.displayControl:SetWidth(TI.vars.AnnounceDisplayWidth)
	TI.displayControlbackDrop:SetWidth(TI.vars.AnnounceDisplayWidth)
--	for i = 1, #TI.SCT.labels do
--		TI.SCT.labels[i]:SetWidth(TI.vars.AnnounceDisplayWidth)
--	end
end

--Display Time Setting

function TI.GetDisplayTime()
	return TI.vars.AnnounceDisplayTime
end

function TI.SetDisplayTime(newVal)
	TI.vars.AnnounceDisplayTime = newVal
	TI.SCT:SetTime(TI.vars.AnnounceDisplayTime)
end

--Display Font
function TI.GetDisplayFont()
	return TI.vars.AnnounceDisplayFont
end

function TI.SetDisplayFont(newVal)
	TI.vars.AnnounceDisplayFont = newVal
	TI.AnnouncementTest()
end

--Display ColorMode
function TI.GetDisplayColorModeSettings()
    return TI.vars.AnnounceDisplayColorMode;
end
function TI.SetDisplayColorModeSettings(newVal)
    TI.vars.AnnounceDisplayColorMode = newVal
end

--Display Align
function TI.GetDisplayAlignSetting()
    return TI.vars.AnnounceDisplayAlignment;
end

function TI.SetDisplayAlignSetting(newVal)
    TI.vars.AnnounceDisplayAlignment = newVal
end

function TI.GetDisplayAlign()
    if( TI.vars.AnnounceDisplayAlignment == TI.SETTINGS_DISPLAY_ALIGN_LEFT) then
        return TEXT_ALIGN_LEFT
    elseif( TI.vars.AnnounceDisplayAlignment == TI.SETTINGS_DISPLAY_ALIGN_CENTER) then
        return TEXT_ALIGN_CENTER
    elseif( TI.vars.AnnounceDisplayAlignment == TI.SETTINGS_DISPLAY_ALIGN_RIGHT) then
        return TEXT_ALIGN_RIGHT
    end
    return TEXT_ALIGN_CENTER
end


--Player Name Color Settings
function TI.GetPlayerNameColor()
	return TI.vars.PlayerNameColor[1],TI.vars.PlayerNameColor[2],TI.vars.PlayerNameColor[3],TI.vars.PlayerNameColor[4]
end
function TI.GetPlayerNameColorTable()
	return TI.vars.PlayerNameColor
end

function TI.SetPlayerNameColor(r,g,b,a)
	TI.vars.PlayerNameColor = {r,g,b,a}
end

--[[
--Show Timestamp
 ]]
function TI.GetShowTimestamp()
    return TI.vars.AnnounceShowTimestamp
end

function TI.SetShowTimestamp(newVal)
    TI.vars.AnnounceShowTimestamp = newVal
end


--[[
--General Show Announcements Settings
 ]]
function TI.GetGuildSetting(guildId)
	return TI.vars.guildSettings[guildId].ShowAnnouncements
end

function TI.SetGuildSetting(guildId, newVal)
	TI.vars.guildSettings[guildId].ShowAnnouncements = newVal
end


--[[
-- Guild Abbreviation Settings
 ]]
function TI.GetGuildAbbreviationSetting(guildId)
	return TI.vars.guildSettings[guildId].Abbreviation;
end

function TI.SetGuildAbbreviationSetting(guildId, newVal)
	TI.vars.guildSettings[guildId].Abbreviation = newVal
end


--[[
--Status Change Settings
 ]]
function TI.GetGuildStatusSetting(guildId)
	return TI.vars.guildSettings[guildId].ShowStatusChange
end

function TI.SetGuildStatusSetting(guildId, newVal)
	TI.vars.guildSettings[guildId].ShowStatusChange = newVal
end


--[[
--Level Change Settings
 ]]
function TI.GetGuildLevelSetting(guildId)
	return TI.vars.guildSettings[guildId].ShowLevelChange
end

function TI.SetGuildLevelSetting(guildId, newVal)
	TI.vars.guildSettings[guildId].ShowLevelChange = newVal
end


--[[
--Member Change Settings
 ]]
function TI.GetGuildMemberSetting(guildId)
	return TI.vars.guildSettings[guildId].ShowMemberChange
end

function TI.SetGuildMemberSetting(guildId, newVal)
	TI.vars.guildSettings[guildId].ShowMemberChange = newVal
end


--[[
--Raid Score Notifications Settings  (removed until confirmed working - Calia)
 ]]

function TI.GetRaidScoreNotifySetting(guildId)
	return TI.vars.guildSettings[guildId].ShowRaidScoreNotifications;
	end

function TI.SetRaidScoreNotifySetting(guildId, newVal)
	TI.vars.guildSettings[guildId].ShowRaidScoreNotifications = newVal;
end

--[[
--Guild Name Color Settings
 ]]
---Returns Color Table {r,g,b,a} of guildId
function TI.GetGuildNameColorTable(guildId)
	guildId = TI:getNormalizedGuildId(guildId)
	if(TI.vars.guildSettings[guildId].GuildNameColor) then
		return TI.vars.guildSettings[guildId].GuildNameColor
	end
	return {1,0,0,1};
end

function TI.GetGuildNameColorSetting(guildId)
	return unpack(TI.vars.guildSettings[guildId].GuildNameColor);
end

function TI.SetGuildNameColorSetting(guildId, r,g,b,a)
	TI.vars.guildSettings[guildId].GuildNameColor = {r,g,b,a};
end

---Migrates savedVars to new format since 0.43
function TI.migrateSavedvars()
	if(TI.vars.migrationDone) then return end

	for i=1, 5 do

		if(TI.vars["ShowAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].ShowAnnouncements = TI.vars["ShowAnnouncementsGuild"..i];
			TI.vars["ShowAnnouncementsGuild"..i] = nil;
		end

		if(TI.vars["AbbreviationAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].Abbreviation = TI.vars["AbbreviationAnnouncementsGuild"..i];
			TI.vars["AbbreviationAnnouncementsGuild"..i] = nil;
		end

		if(TI.vars["ShowStatusAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].ShowStatusChange = TI.vars["ShowStatusAnnouncementsGuild"..i];
			TI.vars["ShowStatusAnnouncementsGuild"..i] = nil;
		end

		if(TI.vars["ShowLevelAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].ShowLevelChange = TI.vars["ShowLevelAnnouncementsGuild"..i];
			TI.vars["ShowLevelAnnouncementsGuild"..i] = nil;
		end

		if(TI.vars["ShowMemberAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].ShowMemberChange = TI.vars["ShowMemberAnnouncementsGuild"..i];
			TI.vars["ShowMemberAnnouncementsGuild"..i] = nil;
		end


		if(TI.vars["GuildNameColorAnnouncementsGuild"..i] ~= nil) then
			TI.vars.guildSettings[i].GuildNameColor = TI.vars["GuildNameColorAnnouncementsGuild"..i];
			TI.vars["GuildNameColorAnnouncementsGuild"..i] = nil;
		end

	end
	TI.vars.migrationDone = true;
	d("migrated saved vars!");

end