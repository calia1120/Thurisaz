--[[
  [ Copyright (c) 2014 User Froali from ESOUI.com
  [ All Rights Reserved. If you want to use arts of my AddOns for your own work, please contact me first!
  ]]

if (TI.locale == nil) then TI.locale = {} end
if (TI.locale.templates == nil) then TI.locale.templates = {} end
if (TI.locale.settings == nil) then TI.locale.settings = {} end
if (TI.locale.settings.tooltip == nil) then TI.locale.settings.tooltip = {} end

TI.locale["online"]=                                                    "online"
TI.locale["offline"] =                                                  "offline"
TI.locale["away"] =                                                     "away"
TI.locale["dontdisturb"] =                                              "do not disturb"
TI.locale["unknown"] =                                                  "unknown"

TI.locale["CharNameHeader"] =                                           "CHARACTER"

TI.locale.templates["status_change"] =                                  "<<1>> <<2>> is now <<3>>"
TI.locale.templates["guild_left"] =                                     "<<1>> left <<2>>"
TI.locale.templates["guild_joined"] =                                   "<<1>> joined <<2>>"
TI.locale.templates["new_level"] =                                      "<<1>> <<2>> reached level <<3>>"
TI.locale.templates["new_veteran"] =                                    "<<1>> <<2>> reached <<3>> CP"
TI.locale.templates["motd_changed"] =                                   "Message of the Day of <<1>> was changed:\r\n<<2>>"
TI.locale.templates["motd_startup"] =                                   "Message of the Day of <<1>>:\r\n<<2>>"
TI.locale.templates["characterName_tooltip"] =                          "Main Character:"

--[[
--settings strings
 ]]
--[[
-- General
 ]]
TI.locale.settings["ThurisazCtrlP"] =                                   "Thurisaz Guild Info"
TI.locale.settings["TGI_SettingsGuildRosterHeader"] =                   "GuildRoster"
--Roster General
TI.locale.settings["TGI_SettingsCharNames"] =                           "Show CharNames"
TI.locale.settings.tooltip["TGI_SettingsCharNames"] =                   "Show CharNames in Guild Roster"

TI.locale.settings["ReloadWarning"] =                                   "Reloads UI"
--[[
-- Announces General
 ]]
TI.locale.settings["TGI_SettingsAnnouncementsHeader"] =                 "Announcements"

TI.locale.settings["TGI_SettingsNameFormat"] =                          "Name Format"
TI.locale.settings.tooltip["TGI_SettingsNameFormat"] =                  "Format names should be displayed in announcements"

TI.locale.settings["TGI_SettingsAnnounceFont"] =                        "Announcements Font"
TI.locale.settings.tooltip["TGI_SettingsAnnounceFont"] =                "Chose font to display Announcements in HUD"

TI.locale.settings["DisplayColorMode"] =                                "Colored Display Messages"
TI.locale.settings.tooltip["DisplayColorMode"] =                        "Show display messages in color?"

TI.locale.settings["TGI_SettingsAnnounceDisplayWidth"] =                "Announcement Width"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayWidth"] =        "Width of Announcements in HUD"

TI.locale.settings["TGI_SettingsAnnounceDisplayAlign"] =                "Horizontal Alignment"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayAlign"] =        "Horizontal Alignment of Announcements in HUD"

TI.locale.settings["TGI_SettingsAnnounceDisplayTime"] =                 "Seconds to Show Announcement"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayTime"] =         "How long should Announcements displayed?"


TI.locale.settings["TGI_SettingsPlayerNameColor"] =                     "Player Name Color"
TI.locale.settings.tooltip["TGI_SettingsPlayerNameColor"] =             "Color to display Player Names in Announcements"

TI.locale.settings["TGI_SettingsAnnounce"] =                            "Show Announcements"
TI.locale.settings.tooltip["TGI_SettingsAnnounce"] =                    "Show system messages about guild activities"

TI.locale.settings["TGI_SettingsAnnounceType"] =                        "Show Announcements as"
TI.locale.settings.tooltip["TGI_SettingsAnnounceType"] =                "How to display Announcements"

TI.locale.settings["TGI_SettingsAnnounceDisplayMoveable"] =             "Unlock Announcement Window"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayMoveable"] =     "Unlock Announcement Window to allow movement and display size"

TI.locale.settings["TGI_SettingsShowTimestamp"] =                       "Show Time on Chat Announcements"
TI.locale.settings.tooltip["TGI_SettingsShowTimestamp"] =               "Show a timestamp as prefix of chat announcements"

--[[
-- Per Guild Settings
 ]]
TI.locale.settings["TGI_SettingsGuildsHeader"] =                        "Guild Settings"

TI.locale.settings["TGI_SettingsOverallAnnounceGuild"] =                "Show Announcements"
TI.locale.settings.tooltip["TGI_SettingsOverallAnnounceGuild"] =        "Show system messages about this guild's activities. (including Message of the Day)"

TI.locale.settings["TGI_SettingsAbbreviationAnnounceGuild"] =           "Guild Name Abbreviation"
TI.locale.settings.tooltip["TGI_SettingsAbbreviationAnnounceGuild"] =   "Define an abbreviation for this guild name. Leave blank to use full guild name"

TI.locale.settings["TGI_SettingsStatusAnnounceGuild"] =                 "Show online changes"
TI.locale.settings.tooltip["TGI_SettingsStatusAnnounceGuild"] =         "Show system messages about online status changes of guild members"

TI.locale.settings["TGI_SettingsLevelAnnounceGuild"] =                  "Show level changes"
TI.locale.settings.tooltip["TGI_SettingsLevelAnnounceGuild"] =          "Show system messages about level changes of guild members"

TI.locale.settings["TGI_SettingsMemberAnnounceGuild"] =                 "Show member changes"
TI.locale.settings.tooltip["TGI_SettingsMemberAnnounceGuild"] =         "Show system messages about guild roster changes (join/leave)"

TI.locale.settings["TGI_SettingsRaidScoreNotificationsGuild"] =         "Show Raid Score Notifications (EXPERIMENTAL)"
TI.locale.settings.tooltip["TGI_SettingsRaidScoreNotificationsGuild"] = "Show Standard Notifications about new Raid Scores in our guild"

TI.locale.settings["TGI_SettingsGuildNameColorGuild"] =                 "Guild Name Color"
TI.locale.settings.tooltip["TGI_SettingsGuildNameColorGuild"] =         "Color to display Guild Name in Announcements"