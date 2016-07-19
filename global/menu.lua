--[[
  [ Copyright (c) 2014 User Froali from ESOUI.com
  [ All Rights Reserved. If you want to use arts of my AddOns for your own work, please contact me first!
  ]]

--[[
  [ Copyright (c) 2014 Froali on ESOUI.com
  ]]


local MENU_SLASH_COMMAND_STRING = "/tgi" ;


function TI.createMenu()
	TI.migrateSavedvars();
	local options = {
		{
			type = "description",
			text =  ("Thurisaz Guild Info 1.0 by Froali (updated by Garkin & |c4EFFF6Calia1120|r)"):format(TI.version),
		},

		{
			type = "submenu",
			name = TI.locale.settings["TGI_SettingsGuildRosterHeader"],
			controls = {
				{
					type = "checkbox",
					name = TI.locale.settings["TGI_SettingsCharNames"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsCharNames"],
					getFunc = function() return TI.GetCharNameSettings() end,
					setFunc = function(val) TI.SetCharNameSettings(val) end,
					warning = "Reloads UI"
				},
			}
		},
		{
			type = "submenu",
			name = TI.locale.settings["TGI_SettingsAnnouncementsHeader"],
			controls = {
				{
					type = "checkbox",
					name = TI.locale.settings["TGI_SettingsAnnounce"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounce"],
					getFunc = TI.GetGuildSettings,
					setFunc = TI.SetGuildSettings,
					default = TI.defaults.ShowAnnouncements,
				},
				{
					type = "dropdown",
					name = TI.locale.settings["TGI_SettingsAnnounceType"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceType"],
					choices = {TI.SETTINGS_DISPLAY_TYPE_CHAT, TI.SETTINGS_DISPLAY_TYPE_LABEL, TI.SETTINGS_DISPLAY_TYPE_BOTH},
					getFunc = TI.GetDisplayTypeSettings,
					setFunc = TI.SetDisplayTypeSettings,
					default = TI.defaults.DisplayType
				},
				{
					type = "checkbox",
					name = TI.locale.settings["TGI_SettingsAnnounceDisplayMoveable"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayMoveable"],
					getFunc = TI.GetDisplayMoveable,
					setFunc = TI.SetDisplayMoveable,
				},
				{
					type = "dropdown",
					name = TI.locale.settings["TGI_SettingsNameFormat"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsNameFormat"],
					choices = {TI.SETTINGS_SHOW_ACC_AND_CHAR_NAME, TI.SETTINGS_SHOW_CHAR_NAME, TI.SETTINGS_SHOW_ACC_NAME},
					getFunc = TI.GetNameFormatSettings,
					setFunc = TI.SetNameFormatSettings,
					default = TI.defaults.NameFormat,
				},
				{
					type = "dropdown",
					name = TI.locale.settings["TGI_SettingsAnnounceFont"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceFont"],
					--choices = {"ZoFontAnnounce","ZoFontAnnounceLarge","ZoFontAnnounceMedium","ZoFontAnnounceSmall","ZoFontAnnounceMessage"}, --ZoFontAnnounceSmall not selecting properly - won't preview, and displays as AnnounceLarge for some reason. Removed for now. - Calia
					choices = {"ZoFontAnnounce","ZoFontAnnounceLarge","ZoFontAnnounceMedium","ZoFontAnnounceMessage"},
					getFunc = TI.GetDisplayFont,
					setFunc = TI.SetDisplayFont,
					default = TI.defaults.AnnounceDisplayFont,
				},
				{
					type = "checkbox",
					name = TI.locale.settings["DisplayColorMode"],
					tooltip = TI.locale.settings.tooltip["DisplayColorMode"],
					getFunc = TI.GetDisplayColorModeSettings,
					setFunc = TI.SetDisplayColorModeSettings,
					default = TI.defaults.AnnounceDisplayColorMode,
				},
				{
					type = "slider",
					name = TI.locale.settings["TGI_SettingsAnnounceDisplayWidth"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayWidth"],
					min = 200,
					max = 1680,
					getFunc = TI.GetDisplayWidth,
					setFunc = TI.SetDisplayWidth,
					default = TI.defaults.AnnounceDisplayWidth,
				},
				{
					type = "dropdown",
					name = TI.locale.settings["TGI_SettingsAnnounceDisplayAlign"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayAlign"],
					choices = {TI.SETTINGS_DISPLAY_ALIGN_LEFT,TI.SETTINGS_DISPLAY_ALIGN_CENTER, TI.SETTINGS_DISPLAY_ALIGN_RIGHT},
					getFunc = TI.GetDisplayAlignSetting,
					setFunc = TI.SetDisplayAlignSetting,
					default = TI.defaults.AnnounceDisplayAlignment,
				},
				{
					type = "slider",
					name = TI.locale.settings["TGI_SettingsAnnounceDisplayTime"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayTime"],
					min = 1,
					max = 60,
					step = 0.5,
					getFunc = TI.GetDisplayTime,
					setFunc = TI.SetDisplayTime,
					default = TI.defaults.AnnounceDisplayTime,
				},
				{
					type = "colorpicker",
					name = TI.locale.settings["TGI_SettingsPlayerNameColor"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsPlayerNameColor"],
					getFunc = TI.GetPlayerNameColor,
					setFunc = TI.SetPlayerNameColor,
					default = { ["r"] = TI.defaults.PlayerNameColor[1], ["g"] = TI.defaults.PlayerNameColor[2], ["b"] = TI.defaults.PlayerNameColor[3], ["a"] = TI.defaults.PlayerNameColor[4] }
				},
				{
					type = "checkbox",
					name = TI.locale.settings["TGI_SettingsShowTimestamp"],
					tooltip = TI.locale.settings.tooltip["TGI_SettingsShowTimestamp"],
					getFunc = TI.GetShowTimestamp,
					setFunc = TI.SetShowTimestamp,
					default = TI.defaults.AnnounceShowTimestamp,
				}
			}
		},
		{
			type = "header",
			name = TI.locale.settings["TGI_SettingsGuildsHeader"],
		}
	}

	for i=1,5 do
		local guildName = GetGuildName(GetGuildId(i))
		if(not guildName or  (guildName):len() < 1) then
			guildName = "Guild "..i
		end

		table.insert(options,
			{
				type = "submenu",
				name = guildName,
				controls = {
					{
						type = "checkbox",
						name = TI.locale.settings["TGI_SettingsOverallAnnounceGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsOverallAnnounceGuild"],
						getFunc = function() return TI.GetGuildSetting(i) end,
						setFunc = function(newVal) TI.SetGuildSetting(i,newVal) end,
						default = TI.defaults.guildSettings[i].ShowAnnouncements,
					},
					{
						type = "editbox",
						name = TI.locale.settings["TGI_SettingsAbbreviationAnnounceGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsAbbreviationAnnounceGuild"],
						isMultiLine = false,
						getFunc = function() return TI.GetGuildAbbreviationSetting(i) end,
						setFunc = function(newVal) TI.SetGuildAbbreviationSetting(i,newVal) end,
						default = TI.defaults.guildSettings[i].Abbreviation,
					},
					{
						type = "checkbox",
						name = TI.locale.settings["TGI_SettingsStatusAnnounceGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsStatusAnnounceGuild"],
						getFunc = function() return TI.GetGuildStatusSetting(i) end,
						setFunc = function(newVal) TI.SetGuildStatusSetting(i,newVal) end,
						disabled = function() return not TI.GetGuildSetting(i) end,
						default = TI.defaults.guildSettings[i].ShowStatusChange,
					},
					{
						type = "checkbox",
						name = TI.locale.settings["TGI_SettingsLevelAnnounceGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsLevelAnnounceGuild"],
						getFunc = function() return TI.GetGuildLevelSetting(i) end,
						setFunc = function(newVal) TI.SetGuildLevelSetting(i,newVal) end,
						disabled = function() return not TI.GetGuildSetting(i) end,
						default = TI.defaults.guildSettings[i].ShowLevelChange,
					},
					{
						type = "checkbox",
						name = TI.locale.settings["TGI_SettingsMemberAnnounceGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsMemberAnnounceGuild"],
						getFunc = function() return TI.GetGuildMemberSetting(i) end,
						setFunc = function(newVal) TI.SetGuildMemberSetting(i,newVal) end,
						disabled = function() return not TI.GetGuildSetting(i) end,
						default = TI.defaults.guildSettings[i].ShowMemberChange,
					},
--					{
--						type = "checkbox",
--						name = TI.locale.settings["TGI_SettingsRaidScoreNotificationsGuild"],
--						tooltip = TI.locale.settings.tooltip["TGI_SettingsRaidScoreNotificationsGuild"],
--						getFunc = function() return TI.GetRaidScoreNotifySetting(i) end,
--						setFunc = function(newVal) TI.SetRaidScoreNotifySetting(i,newVal) end,
--						disabled = function() return not TI.GetGuildSetting(i) end,
--						default = TI.defaults.guildSettings[i].ShowRaidScoreNotifications,
--					},
					{
						type = "colorpicker",
						name = TI.locale.settings["TGI_SettingsGuildNameColorGuild"],
						tooltip = TI.locale.settings.tooltip["TGI_SettingsGuildNameColorGuild"],
						getFunc = function() return TI.GetGuildNameColorSetting(i) end,
						setFunc = function(r,g,b,a) TI.SetGuildNameColorSetting(i,r,g,b,a) end,
						default = { ["r"] = TI.defaults.guildSettings[i].GuildNameColor[1], ["g"] = TI.defaults.guildSettings[i].GuildNameColor[2], ["b"] = TI.defaults.guildSettings[i].GuildNameColor[3], ["a"] = TI.defaults.guildSettings[i].GuildNameColor[4] },
					},
				}
			});
	end



	local menuPanel = {
		type = "panel",
		name = TI.locale.settings["ThurisazCtrlP"],
		displayName =  TI:ApplyChatColor(TI.locale.settings["ThurisazCtrlP"], {0,1,0,0.5}),
		slashCommand = MENU_SLASH_COMMAND_STRING,	--(optional) will register a keybind to open to this panel
		registerForRefresh = true,	--boolean (optional) (will refresh all options controls when a setting is changed and when the panel is shown)
		registerForDefaults = false,	--boolean (optional) (will set all options controls back to default values)
	}

	local LAM = LibStub:GetLibrary("LibAddonMenu-2.0");
	LAM:RegisterAddonPanel("TGI_ControlPanel", menuPanel);
	LAM:RegisterOptionControls("TGI_ControlPanel", options);
end