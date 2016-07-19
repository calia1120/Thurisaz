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
TI.locale["away"] =                                                     "abwesend"
TI.locale["dontdisturb"] =                                              "beschäftigt"
TI.locale["unknown"] =                                                  "unbekannt"

TI.locale["CharNameHeader"] =                                           "CHARAKTER"

TI.locale.templates["status_change"] =                                  "<<1>> <<2>> ist jetzt <<3>>"
TI.locale.templates["guild_left"] =                                     "<<1>> hat <<2>> verlassen"
TI.locale.templates["guild_joined"] =                                   "<<1>> ist beigetreten<<2>>"
TI.locale.templates["new_level"] =                                      "<<1>> <<2>> hat erreicht Stufe <<3>>"
TI.locale.templates["new_veteran"] =                                    "<<1>> <<2>> erreicht hat <<3>> CP"
TI.locale.templates["motd_changed"] =                                   "Nachricht des Tages für <<1>> wurde geändert:\r\n<<2>>"
TI.locale.templates["motd_startup"] =                                   "Nachricht des Tages für <<1>>:\r\n<<2>>"
TI.locale.templates["characterName_tooltip"] =                          "Hauptcharakter:"

--[[
--settings strings
 ]]
--[[
-- General
 ]]
TI.locale.settings["ThurisazCtrlP"] =                                   "Thurisaz Guild Info"
TI.locale.settings["TGI_SettingsGuildRosterHeader"] =                   "Mitgliederliste"
--Roster General
TI.locale.settings["TGI_SettingsCharNames"] =                           "Zeige Charakternamen"
TI.locale.settings.tooltip["TGI_SettingsCharNames"] =                   "Zeige Charakternamen in der Mitgliederliste"

TI.locale.settings["ReloadWarning"] =                                   "Neuladen Benutzeroberfläche!"
--[[
-- Announces General
 ]]
TI.locale.settings["TGI_SettingsAnnouncementsHeader"] =                 "Ankündigungen"

TI.locale.settings["TGI_SettingsNameFormat"] =                          "Format für Namen"
TI.locale.settings.tooltip["TGI_SettingsNameFormat"] =                  "Format, nach dem die Namen in den Meldungen angezeigt werden"

TI.locale.settings["TGI_SettingsAnnounceFont"] =                        "Schriftart für Meldungen"
TI.locale.settings.tooltip["TGI_SettingsAnnounceFont"] =                "Wähle die Schriftart für die Meldungen im HUD"

TI.locale.settings["DisplayColorMode"] =                                "Farbige Bildschirmmeldungen"
TI.locale.settings.tooltip["DisplayColorMode"] =                        "Bildschirmmeldungen farbig anzeigen?"

TI.locale.settings["TGI_SettingsAnnounceDisplayWidth"] =                "Breite der Meldungen"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayWidth"] =        "Maximale Breite der Meldungen im HUD"

TI.locale.settings["TGI_SettingsAnnounceDisplayAlign"] =                "Horizontale Ausrichtung"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayAlign"] =        "Horizontale Ausrichtung der Meldungen im HUD"

TI.locale.settings["TGI_SettingsAnnounceDisplayTime"] =                 "Anzeigedauer in Sekunden"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayTime"] =         "Wie lange sollen Meldungen im HUD angezeigt werden?"

TI.locale.settings["TGI_SettingsPlayerNameColor"] =                     "Farbe der Spielernamen"
TI.locale.settings.tooltip["TGI_SettingsPlayerNameColor"] =             "Farbe, in der SPielernamen in den Meldungen angezeigt werden"

TI.locale.settings["TGI_SettingsAnnounce"] =                            "Zeige Meldungen (global)"
TI.locale.settings.tooltip["TGI_SettingsAnnounce"] =                    "Zeige Meldungen über Gildenaktivitäten (global an/aus)"

TI.locale.settings["TGI_SettingsAnnounceType"] =                        "Zeige Meldungen als"
TI.locale.settings.tooltip["TGI_SettingsAnnounceType"] =                "Wo sollen Meldungen erscheinen?"

TI.locale.settings["TGI_SettingsAnnounceDisplayMoveable"] =             "Entsperre Meldungefenster"
TI.locale.settings.tooltip["TGI_SettingsAnnounceDisplayMoveable"] =     "Entsperre Meldungefenster um es zu verschieben und seine Größe anzuzeigen"

TI.locale.settings["TGI_SettingsShowTimestamp"] =                       "Zeige Zeit vor Chatmeldungen"
TI.locale.settings.tooltip["TGI_SettingsShowTimestamp"] =               "Zeige einen Zeitstempel vor jeder Meldung im Chat"

--[[
-- Per Guild Settings
 ]]
TI.locale.settings["TGI_SettingsGuildsHeader"] =                        "Gilden Einstellungen"

TI.locale.settings["TGI_SettingsOverallAnnounceGuild"] =                "Zeige Meldungen"
TI.locale.settings.tooltip["TGI_SettingsOverallAnnounceGuild"] =        "Zeige Meldungen über Aktivitäten dieser Gilde. (inklusive Nachricht des Tages)"

TI.locale.settings["TGI_SettingsAbbreviationAnnounceGuild"] =           "Gildennamen Kürzel"
TI.locale.settings.tooltip["TGI_SettingsAbbreviationAnnounceGuild"] =   "Lege ein Kürzel für diese Gilde an, um dieses Kürzel in den meldungen zu verwenden. Frei lassen für den vollen Gildennamen anzuzeigen"

TI.locale.settings["TGI_SettingsStatusAnnounceGuild"] =                 "Zeige Status Änderungen"
TI.locale.settings.tooltip["TGI_SettingsStatusAnnounceGuild"] =         "Zeige Meldungen über Statusänderungen der Gildenmitglieder dieser  (online, offline, abwesend, beschäftigt)"

TI.locale.settings["TGI_SettingsLevelAnnounceGuild"] =                  "Zeige Stufenaufstiege"
TI.locale.settings.tooltip["TGI_SettingsLevelAnnounceGuild"] =          "Zeige Meldungen über (Veteranen-)Stufen Aufstiege der Gildenmitglieder"

TI.locale.settings["TGI_SettingsMemberAnnounceGuild"] =                 "Zeige Mitglieds Änderungen"
TI.locale.settings.tooltip["TGI_SettingsMemberAnnounceGuild"] =         "Zeige Meldungen über Gildenbeitritte und Austritte"

--TI.locale.settings["TGI_SettingsRaidScoreNotificationsGuild"] =         "Zeige Raid-Bestenlisten Benachrichtigungen"
--TI.locale.settings.tooltip["TGI_SettingsRaidScoreNotificationsGuild"] = "Zeige die Standard Raid-Bestenlisten Benachrichtigungen deiner Gildenmitglieder (EXPERIMENTAL)"

TI.locale.settings["TGI_SettingsGuildNameColorGuild"] =                 "Farbe des Gildennamens"
TI.locale.settings.tooltip["TGI_SettingsGuildNameColorGuild"] =         "Farbe, in der der Gildenname in Meldungen angezeigt werden soll"

