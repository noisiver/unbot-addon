local _, L = ...;

if GetLocale() == "deDE" then

    -----------------------------------------------------------------------------------------------
    --- Bindings.lua ---
    -----------------------------------------------------------------------------------------------

    L["Un Bot Command ActionButton 1"] = "Un Bot Kommando ActionButton 1";
    L["Un Bot Command ActionButton 2"] = "Un Bot Kommando ActionButton 2";
    L["Un Bot Command ActionButton 3"] = "Un Bot Kommando ActionButton 3";
    L["Un Bot Command ActionButton 4"] = "Un Bot Kommando ActionButton 4";
    L["Un Bot Command ActionButton 5"] = "Un Bot Kommando ActionButton 5";
    L["Un Bot Command ActionButton 6"] = "Un Bot Kommando ActionButton 6";
    L["Un Bot Command ActionButton 7"] = "Un Bot Kommando ActionButton 7";
    L["Un Bot Command ActionButton 8"] = "Un Bot Kommando ActionButton 8";
    L["Un Bot Command ActionButton 9"] = "Un Bot Kommando ActionButton 9";
    L["Un Bot Command ActionButton 10"] = "Un Bot Kommando ActionButton 10";
    L["Un Bot Close Frame ActionButton"] = "Un Bot Fenster schließen Button";

    -----------------------------------------------------------------------------------------------
    --- EquipInventory.xml ---
    -----------------------------------------------------------------------------------------------

    L["Left mouse button: Make "] = "Linke Maustaste: Lass ";
    L[" equip this item."] = " dieses Item anlegen.";
    L["e "] = "e ";
    
    -----------------------------------------------------------------------------------------------
    --- ExecuteCommand.lua ---
    -----------------------------------------------------------------------------------------------

    -- CommandUnBotSetting
    L["InspectFrame_Show "] = "InspectFrame_Show ";
    L[", Name "] = ", Name ";

    -- CommandShowStrategyFrame & CommandInspectFrame & CommandInitForLevel & CommandUnBotItemList
    L["NO_TARGET"] = "Du hast kein Ziel.";
    L["NEED_BOT_TARGET"] = "Du musst einen Bot auswählen.";
    L["TARGET_NOT_IN_GROUP"] = "Das Ziel ist nicht in Deiner Gruppe.";

    -- CommandFriendsOnline
    L[".playerbot bot add "] = ".playerbot bot add ";
    L["NO_FRIENDS_FOUND"] = "Keine Freund gefunden.";

    -- CommandCombatStop
    L["In the group "] = "In der Gruppe ";
    L[" out of combat"] = " außerhalb des Kampfes";

    -- CommandUnBotItemList
    L["View items"] = "Gegenstände anzeigen";
    
    -----------------------------------------------------------------------------------------------
    --- ImplantInspectFrame.lua ---
    -----------------------------------------------------------------------------------------------

    -- UnBotInitInspectFrame
    L["Embedded the module into the character window"] = "Bindet das Modul in das Character Fenster ein.";

    -- UnBotInspectPaperDollFrame_OnShow
    L["In the equipment slot: Left mouse button to change the equipment and right mouse button to remove the equipment."] = "Auf dem Ausrüstungsplatz: Linke Maustaste zum Ändern der Ausrüstung und rechte Maustaste zum Entfernen der Ausrüstung.";

    -----------------------------------------------------------------------------------------------
    --- NPCFrame.lua ---
    -----------------------------------------------------------------------------------------------

    -- NPCCommand_OnEnter
    L["Creates a "] = "Erstellt einen ";
    L[" bot."] = " Bot.";
    L["Before using the command, you need to target yourself or a bot."] = "Bevor Du den Befehl verwenden kannst, musst Du dich selbst oder einen Bot anvisieren.";
    L["Uses:"] = "Uses:";

    -----------------------------------------------------------------------------------------------
    --- Online.lua ---
    -----------------------------------------------------------------------------------------------

    -- UnBotShowOnlineFrame
    L["Failed to open the Online window."] = "Das Online-Fenster konnte nicht geöffnet werden.";

    -----------------------------------------------------------------------------------------------
    --- QueryReward.lua ---
    -----------------------------------------------------------------------------------------------

    -- ShowQuestReward
    L["Select reward for completing quests"] = "Wähle die Belohnung für den Abschluss von Quests";
    L["Complete quest reward panelLabel "] = "Quest abschließen belohnungs panelLabel ";
    L["TitleLabel Not found, failed to set player name "] = "TitleLabel Nicht gefunden, Fehler beim festlegen des Spielernamens ";

    -- UnBotShowQuestRewardTips
    L["ITEM_NOT_ON_CLIENT_REFRESH"] = "Dieses Item wurde nicht in Deinem Client geladen. Du musst einen Moment warten, um den Server abzufragen und die Maus dann erneut in dieses Element bewegen.";
    L["Left mouse button: Select "] = "Linke Maustaste: Wähle ";
    L[" as the quest reward"] = " als Quest Belohnung";

    -----------------------------------------------------------------------------------------------
    --- Strategy.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- StrategyOption_OnEnter
    L["Active"] = "Aktiv";
    L["Inactive"] = "Inaktiv";
    L["Some strategies are ineffective for certain classes and some are mutually exclusive."] = "Einige Strategien sind für bestimmte Klassen unwirksam und andere schließen sich gegenseitig aus.";
    L["LMB: Deactivate"] = "LMB: Deaktivieren";
    L["LMB: Activate"] = "LMB: Aktivieren";

    -----------------------------------------------------------------------------------------------
    --- StrategyTips.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- InitializeStrategy
    L["grind_title"] = "Aggressiv";
    L["grind_desc"] = "Wenn der Bot kein Ziel hat, greift er jedes nahe gelegene Ziel an.";
    L["attack_weak_title"] = "Freies Targeting";
    L["attack_weak_desc"] = "Der Bot wird sein eigenes Ziel auswählen, um im Kampf anzugreifen.";
    L["attack_force_title"] = "Passiv";
    L["attack_force_desc"] = "Der Bot wählt im Kapmpf ein Ziel nicht automatisch aus, das Ziel von Dir festgelegt werden.";
    L["tank_title"] = "Einzelner Feind";
    L["tank_desc"] = "Der Bot wird nur Aggro auf einen einzelnen Feind gleichzeitig aufbauen.";
    L["tank_aoe_title"] = "Mehrere Feinde";
    L["tank_aoe_desc"] = "Der Bot wird gleichzeitig alle verfügbaren Gegner angreifen.";
    L["tank_assist_title"] = "Assistent Tank";
    L["tank_assist_desc"] = "Der Bot wird den Tank in der Gruppe unterstützen.";
    L["dps_title"] = "DPS";
    L["dps_desc"] = "Der Bot wird sein Ziel im Kampf angreifen.";
    L["dps_aoe_title"] = "AoE (DPS)";
    L["dps_aoe_desc"] = "Der Bot wird sein Ziel im Kampf angreifen, und AoE angriffe verwenden, wenn mehrere Ziele vorhanden sind.";
    L["dps_assist_title"] = "Unterstützung DPS";
    L["dps_assist_desc"] = "Der Bot unterstützt die DPS in der Gruppe."; -- Needs correction
    L["dps_debuff_title"] = "Debuff (DPS)";
    L["dps_debuff_desc"] = "Der Bot wird im Kampf Debuffs auf sein Ziel wirken.";
    L["heal_title"] = "Heiler";
    L["heal_desc"] = "Der Bot wird im Kampf keinen Schaden mehr verursachen, sondern sich stattdessen auf die Heilung verletzter Mitglieder der Gruppe konzentrieren.";
    L["aoe_title"] = "AOE Schaden";
    L["aoe_desc"] = "Bots verwenden im Kampf AoE Schaden."; -- Needs correction
    L["flee_title"] = "Wegziehen";
    L["flee_desc"] = "Der Bot wird versuchen, sich im Kampf von seinem Ziel zu entfernen."; -- ???
    L["fire_title"] = "Feuer";
    L["fire_desc"] = "Der Bot wird feuerbasierte Zauber verwenden, um im Kampf Schaden zu verursachen. (Nur Magier) ";
    L["fire_aoe_title"] = "Feuer (AOE)";
    L["fire_aoe_desc"] = "Der Bot verwendet feuerbasierte AoE Angriffe, wenn mehrere Ziele vorhanden sind. (Nur Magier)";
    L["frost_title"] = "frost";
    L["frost_desc"] = "Der Bot wird frostbasierte Zauber verwenden, um im Kampf Schaden zu verursachen. (Nur Magier)";
    L["frost_aoe_title"] = "Frost (AOE)";
    L["frost_aoe_desc"] = "Der Bot verwendet frostbasierte AoE Angriffe, wenn mehrere Ziele vorhanden sind. (Nur Magier)";
    L["arcane_title"] = "Arkan";
    L["arcane_desc"] = "Der Bot wird Arcane-basierte Zaubersprüche verwenden, um im Kampf Schaden zu verursachen. (Nur Magier)";
    L["threat_title"] = "Bedrohungskontrolle";
    L["threat_desc"] = "Der Bot wird im Kampf konservativ verhalten, um zu verhindern, dass er zu viel Bedrohung generiert.";
    L["conserve_mana_title"] = "Mana sparen";
    L["conserve_mana_desc"] = "Der Bot wird Mana sparsam im Kampf verwenden.";
    L["shadow_title"] = "Schatten";
    L["shadow_desc"] = "Bots verwendet schattenbasierte Zaubersprüche, um im Kampf Schaden zu verursachen. (Nur Hexenmeister und Priester)";
    L["shadow_aoe_title"] = "Schatten (AoE)";
    L["shadow_aoe_desc"] = "Der Bot verwendet schattenbasierte AoE Agriffe, wenn mehrere Ziele vorhanden sind. (Nur Hexenmeister und Priester)";
    L["shadow_debuff_title"] = "Debuff (Schatten)";
    L["shadow_debuff_desc"] = "Der Bot wird im Kampf im Kampf Schattenbasis debuffs auf sein Ziel wirken. (Nur Hexenmeister und Priester)";
    L["melee_title"] = "Nahkampf";
    L["melee_desc"] = "Der Bot wird sich im Kampf immer an seinem Ziel nähern. (Nur Schamanen)";
    L["melee_aoe_title"] = "Nahkampf (AoE)";
    L["melee_aoe_desc"] = "Der Bot wird sich im Kampf immer in der Nähe seines Ziels bewegen und nutzt AoE Angriffe, um ihr Ziel zu beschädigen. (Nur Schamanen)";
    L["rshadow_title"] = "Schatten Widerstand";
    L["rshadow_desc"] = "Der Bot verwendet die Schattenwiderstand Aura im Kampf. (Nur Paladin)";
    L["rfrost_title"] = "Frost Widerstand";
    L["rfrost_desc"] = "Der Bot verwendet Frostwiderstand Aura im Kampf.( Nur Paladin)";
    L["rfire_title"] = "Feuer Widerstand";
    L["rfire_desc"] = "Der Bot verwendet die Feuerwiderstand Aura im Kampf. (Nur Paladin)";
    L["barmor_title"] = "Hingabe Aura";
    L["barmor_desc"] = "Der Bot wird im Kampf die Hingabe-Aura verwenden. (Nur Paladin)";
    L["bspeed_title"] = "Kreuzfahrer Aura";
    L["bspeed_desc"] = "Der Bot verwendet die Kreuzfahrer Aura im Kampf. (Nur Paladin)";
    L["rnature_title"] = "Natur Widerstand";
    L["rnature_desc"] = "Der Bot verwendet im Kampf die Aura Natur-Wiederstand. (Für Jäger)"; -- Needs correction
    L["bhealth_title"] = "Buff (Gesundheit)";
    L["bhealth_desc"] = "Der Bot wird Buffs verwenden, die im Kampf die Gesundheit erhöhen."; -- ???
    L["bmana_title"] = "Buff (Mana)";
    L["bmana_desc"] = "Der Bot wird Buffs verwenden, die das Mana erhöhen, während sie nicht im Kampf sind."; -- ???
    L["bdps_title"] = "Buff (Schaden)";
    L["bdps_desc"] = "Der Bot verwendet Buffs, die den Schaden erhöhen, wenn nicht im Kampf."; -- ???
    L["bear_title"] = "Bärenform";
    L["bear_desc"] = "TDer Bot wird im Kampf die Bärenform oder eine Terrorbärenform verwenden. (Nur Druiden)";
    L["cat_title"] = "Katzenform";
    L["cat_desc"] = "Der Bot verwendet im Kampf die Katzenform. (Nur Druiden)";
    L["cat_aoe_title"] = "Katzenform (AoE)";
    L["cat_aoe_desc"] = "Der Bot verwendet die Katzenform im Kampf und konzentriert sich auf die Nutzung der AoE Angriffe. (Nur Druiden)";
    L["caster_title"] = "Fernkampf";
    L["caster_desc"] = "Der Bot wird im Kampf Fernkampfzauber auf sein Ziel wirken. (Nur Druiden und Schamanen)";
    L["caster_aoe_title"] = "Fernkampf (AoE)";
    L["caster_aoe_desc"] = "Der Bot verwendet AoE Angriffe, wenn mehrere Ziele vorhanden sind.";
    L["caster_debuff_title"] = "Debuff (Fernkampf)";
    L["caster_debuff_desc"] = "Der Bot wirkt im Kampf Fenrkampf Debuffs auf sein Ziel. (Nur Druiden und Schamanen)";
    L["totems_title"] = "Totems";
    L["totems_desc"] = "Der Bot platziert im Kampf Totems. (Nur Schamanen)";
    L["loot_title"] = "Loot";
    L["loot_desc"] = "Der Bot plündert alle Gegner in der Nähe im Kampf.";
    L["naxx_title"] = "Naxxramas";
    L["naxx_desc"] = "Das Bot-Verhalten ist spezifisch für Naxxramas. (Dies ist nur in Naxxramas gültig)";

    -- ClassStrategyNC
    L["grind_nc_title"] = "Aggressiv";
    L["grind_nc_desc"] = "Der Bot wird nach nahe gelegenen Feinden suchen, wenn er sich nicht im Kampf befindet.";
    L["move_random_nc_title"] = "Sich zufällig bewegen";
    L["move_random_nc_desc"] = "Der Bot läuft zufällig herum, wenn er gelangweilt ist und sich nicht im Kampf befindet.";
    L["attack_weak_nc_title"] = "Freies Targeting";
    L["attack_weak_nc_desc"] = "Der Bot wählt frei ein Ziel, das er angreifen kann, wenn er in den Kampf eintritt.";
    L["attack_force_nc_title"] = "Passiv";
    L["attack_force_nc_desc"] = "Der Bot führt keine Aktionen aus, während Sie nicht im Kampf sind, und Sie müssen ein Ziel für sie manuell angeben.";
    L["bhealth_nc_title"] = "Buff (Gesundheit)";
    L["bhealth_nc_desc"] = "Der Bot wird Buffs verwenden, die die Gesundheit erhöhen, während sie nicht im Kampf sind."; -- ???
    L["bmana_nc_title"] = "Buff (Mana)";
    L["bmana_nc_desc"] = "Der Bot wird Buffs verwenden, die das Mana erhöhen, während sie nicht im Kampf sind."; -- ???
    L["bdps_nc_title"] = "Buff (Schaden)";
    L["bdps_nc_desc"] = "Der Bot verwendet Buffs, die den Schaden erhöhen, wenn nicht im Kampf."; -- ???
    L["emote_nc_title"] = "Emote";
    L["emote_nc_desc"] = "Der Bot führt von Zeit zu Zeit Emotes durch, wenn er gelangweilt und nicht im Kampf ist.";
    L["food_nc_title"] = "Ausruhen";
    L["food_nc_desc"] = "Der Bot erhält Lebensmittel und Getränke, je nach den Anforderungen, nachdem er den Kampf verlassen hat.";
    L["loot_nc_title"] = "Loot";
    L["loot_nc_desc"] = "Der Bot plündert alle Gegner in der Nähe, nachdem er den Kampf verlassen hat.";
    L["stay_nc_title"] = "Bleiben";
    L["stay_nc_desc"] = "Der Bot wird still stehen, wenn er nicht im Kampf ist.";
    L["follow_nc_title"] = "Folgen";
    L["follow_nc_desc"] = "Der Bot wird dir folgen wenn er sich nicht im Kampf befindet.";
    L["quest_nc_title"] = "Quest";
    L["quest_nc_desc"] = "Der Bot wird Quests mit NPCs akzeptieren und wenden, mit denen Sie interagieren.";
    L["naxx_nc_title"] = "Naxxramas";
    L["naxx_nc_desc"] = "Das Bot-Verhalten ist spezifisch für Naxxramas. (Dies ist nur in Naxxramas gültig)";

    -----------------------------------------------------------------------------------------------
    --- Tooltips.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- UnBotTooltipTitle
    L["TooltipTitle_0"] = "Fenster und Buttongruppen schließen";
    L["TooltipTitle_1"] = "Initialisiere alle Online-Bots";
    L["TooltipTitle_2"] = "Einen Bot initialisieren";
    L["TooltipTitle_3"] = "Initialisiere alle Bots";
    L["TooltipTitle_4"] = "Aktualisiere einen zufälligen Bot";
    L["TooltipTitle_5"] = "Talente eines Bots zurücksetzen";
    L["TooltipTitle_6"] = "Füge die verbleibenden Talente eines Bots hinzu (1)";
    L["TooltipTitle_7"] = "Füge die verbleibenden Talente eines Bots hinzu (2)";
    L["TooltipTitle_8"] = "Füge die verbleibenden Talente eines Bots hinzu (3)";
    L["TooltipTitle_9"] = "botAI aller Bots zurücksetzen";
    L["TooltipTitle_10"] = "botAI eines Bots zurücksetzen";
    L["TooltipTitle_11"] = "Überprüfe die Ausrüstung eines Bots";
    L["TooltipTitle_12"] = "Bot initialisieren";
    L["TooltipTitle_13"] = "Teleportiere alle Bots zu Dir";
    L["TooltipTitle_14"] = "Teleportiere einen Bot zu Dir";
    L["TooltipTitle_15"] = "Lass alle Bots Dir folgen";
    L["TooltipTitle_16"] = "Lass einen Bot Dir folgen";
    L["TooltipTitle_17"] = "Lass alle Bots Zauber lernen";
    L["TooltipTitle_18"] = "Lass alle Bots den Geist freisetzen";
    L["TooltipTitle_19"] = "Lass einen Bot den Geist freisetzen";
    L["TooltipTitle_20"] = "Überprüfe den Quest-Status aller Bots";
    L["TooltipTitle_21"] = "Überprüfe den Quest-Status eines Bots";
    L["TooltipTitle_22"] = "Überprüfe den Status aller Bots";
    L["TooltipTitle_23"] = "Überprüfe den Status eines Bots";
    L["TooltipTitle_24"] = "Lass alle Bots Beute sammeln";
    L["TooltipTitle_25"] = "Lass alle Bots weglaufen";
    L["TooltipTitle_26"] = "Tankbots weglaufen lassen";
    L["TooltipTitle_27"] = "DPS-Bots weglaufen lassen";
    L["TooltipTitle_28"] = "Heiler-Bots weglaufen lassen";
    L["TooltipTitle_29"] = "Nahkampf-Bots weglaufen lassen";
    L["TooltipTitle_30"] = "Fernkampf-Bots weglaufen lassen";
    L["TooltipTitle_31"] = "Einen Bot weglaufen lassen";
    L["TooltipTitle_32"] = "Lass alle Bots Dein Ziel angreifen. ";
    L["TooltipTitle_33"] = "Lass Tank-Bots Dein Ziel angreifen";
    L["TooltipTitle_34"] = "Lass DPS-Bots Dein Ziel angreifen";
    L["TooltipTitle_35"] = "Lass Heiler-Bots Dein Ziel angreifen";
    L["TooltipTitle_36"] = "Lass Nahkampf-Bots Dein Ziel angreifen";
    L["TooltipTitle_37"] = "Lass Fernkampf-Bots Dein Ziel angreifen";
    L["TooltipTitle_38"] = "Bot Formation - Pfeil";
    L["TooltipTitle_39"] = "Bot Formation - Defensiv";
    L["TooltipTitle_40"] = "Bot Formation - Dicht";
    L["TooltipTitle_41"] = "Bot Formation - Nahkampf";
    L["TooltipTitle_42"] = "Bot Formation - Kreis";
    L["TooltipTitle_43"] = "Bot Formation - Aufgereiht";
    L["TooltipTitle_44"] = "Bot Formation - Schlange";
    L["TooltipTitle_45"] = "Bot Formation - Raute"; -- ???
    L["TooltipTitle_46"] = "Prüfe die Formation aller Bots";
    L["TooltipTitle_47"] = "Lass alle Bots still stehen";
    L["TooltipTitle_48"] = "Select bot to automatically select target"; -- Needs correction
    L["TooltipTitle_49"] = "Select bot to select target manually"; -- Needs correction
    L["TooltipTitle_50"] = "Druiden Zauber DPS"; -- Needs correction
    L["TooltipTitle_51"] = "Druiden Bärform"; -- Needs correction
    L["TooltipTitle_52"] = "Druiden Katzenform"; -- Needs correction
    L["TooltipTitle_53"] = "Druiden Heiler Modus"; -- Needs correction
    L["TooltipTitle_54"] = "Öffne den Strategie-Editor";
    L["TooltipTitle_55"] = "Lass einen Paladin Bot Frostwiderstand Aura verwenden";
    L["TooltipTitle_56"] = "Lass einen Paladin Bot Feuerwiderstand Aura verwenden";
    L["TooltipTitle_57"] = "Lass einen Paladin Bot die Hingabe Aura verwenden";
    L["TooltipTitle_58"] = "Lass einen Paladin bot die Kreuzfahrer Aura verwenden";
    L["TooltipTitle_59"] = "Lass einen Paladin bot Segen der Könige verwenden";
    L["TooltipTitle_60"] = "Lass einen Paladin bot Segen der Weisheit verwenden";
    L["TooltipTitle_61"] = "Lass einen Paladin bot Segen der Macht verwenden";
    L["TooltipTitle_62"] = "Prüfe AI Status aller Bots";
    L["TooltipTitle_63"] = "Prüfe AI Status eines Bots";
    L["TooltipTitle_64"] = "Prüfe das Inventar eines Bots";
    L["TooltipTitle_65"] = "Lass einen Bot einen Gegenstand wegwerfen";
    L["TooltipTitle_66"] = "Lass einen Bot einen Gegenstand ausrüsten";
    L["TooltipTitle_67"] = "Lass einen Bot einen Gegenstand verkaufen";
    L["TooltipTitle_68"] = "Lass einen Bot einen Gegenstand benutzen";
    L["TooltipTitle_69"] = "Prüfe das Zauberbuch eines Bots";
    L["TooltipTitle_70"] = "Lass die gesamte Gruppe den Kampf verlassen";
    L["TooltipTitle_71"] = "Gruppe auflösen";
    L["TooltipTitle_72"] = "Zeige alle Icons im Spiel an";
    L["TooltipTitle_73"] = "Teleportiere zu einem anderen Spieler";
    L["TooltipTitle_74"] = "Bots verwalten";
    L["TooltipTitle_75"] = "Zeige Strategie für Bots außerhalb des Kampfes an"; -- Needs correction
    L["TooltipTitle_76"] = "Lass einen Bot stehen bleiben";
    L["TooltipTitle_77"] = "Beschwöre einen Bot";
    L["TooltipTitle_78"] = "Lass alle Bots auf Deiner Freundesliste online kommen";
    L["TooltipTitle_79"] = "Lade jeden auf Deiner Freundesliste ein";
    L["TooltipTitle_80"] = "Bereitschafts Check" -- Needs correction
    L["TooltipTitle_81"] = "Lass alle Bots Mana regenerieren";
    L["TooltipTitle_82"] = "Lass alle Bots offline gehen";
    L["TooltipTitle_83"] = "Lass alle Bots online kommen";
    L["TooltipTitle_84"] = "Modul: Naxxramas";
    L["TooltipTitle_85"] = "Aktionen für alle Bots zurücksetzen";
    L["TooltipTitle_86"] = "Lass einen Bot offline gehen";
    L["TooltipTitle_87"] = "Lass einen Bot online kommen";
    L["TooltipTitle_88"] = "Füge alle Bots Deiner Freundesliste hinzu";
    L["TooltipTitle_89"] = "Grinden"; -- Needs correction

    -- UnBotTooltipHelp
    L["TooltipHelp0"] = "Schließt geöffnete Fenster und erweiterte Buttongruppen. Verwende die rechte Maustaste um die Leiste auszublenden. Du kannst die Anzeige der Leiste mit /unbot umschalten.";
    L["TooltipHelp1"] = "Alle Online-Bots neu initialisieren, einschließlich ihrer Stufen (zufällig unter den festgelegten Stufenbereichen), Ausrüstung und Fähigkeiten. Nach der Ausführung steckt der Server fest und Du musst warten. Es kann nicht häufig ausgeführt werden."; -- Needs correction
    L["TooltipHelp2"] = "Initialisiert den ausgewählten Bot. Es wird seine Ausrüstung und Fähigkeiten festlegen.";
    L["TooltipHelp3"] = "Initialisiert alle Bots in Deiner Gruppe. Es wird ihre Ausrüstung und Fähigkeiten festlegen.";
    L["TooltipHelp4"] = "Zufällige Bots aktualisieren. Wenn die Anzahl der Online-Bots nicht ausreicht basierend auf den Einstellungen, werden zusätzliche Bots online kommen. Wenn die Anzahl ausreicht, werden einige offline und andere online sein."; -- Needs correction
    L["TooltipHelp5"] = "Lässt den Bot seine Talentpunkte zurücksetzen und verwenden dann den Befehl um die verbleibenden Talentpunkte hinzuzufügen, damit der Bot Talente wechseln kann. Wenn der Bot Talente wechselt, musst Du die KI zurücksetzen, damit der Bot in den neuen Talenten funktioniert (Befehl Nr. 9 oder 10). Du brauchst ein GM-Konto, um dies zu tun."; -- Needs correction
    L["TooltipHelp6"] = "Select the bot and let it add all remaining talent points to its talents on the first type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp7"] = "Select the bot and let it add all remaining talent points to its talents on the second type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp8"] = "Select the bot and let it add all remaining talent points to the talent on its third type page. If the bot switches talents, you need to execute reset ai again to make the bot work in the new talent (Command No. 9 or 10 reset ai)."; -- Needs correction
    L["TooltipHelp9"] = "Reset the AI strategy of all bots in the team. After a bot switches talents, it is usually necessary to execute this command so that the bots can start fighting with new talents."; -- Needs correction
    L["TooltipHelp10"] = "Setzt die AI Strategie des ausgewählten Bots zurück. Du musst dieses Kommando normalerweise ausführen, nachdem der Bot die Talente gewechselt hat, damit er wieder am Kampf teilnimmt."; -- Needs correction
    L["TooltipHelp11"] = "Prüft die Ausrüstung des ausgewählten Bots";
    L["TooltipHelp12"] = "Initialize the target bot to your own level, and reset its skills and equipment to this level. If you want to reset it to another level, you need to manually enter the command, and finally add the level number."; -- Needs correction
    L["TooltipHelp13"] = "Teleportiert alle Bots in Deiner Gruppe zu Dir.";
    L["TooltipHelp14"] = "Teleportiert den ausgewählten Bot zu Dir.";
    L["TooltipHelp15"] = "Alle Bots in Deiner Gruppe folgen Dir in der gewählten Formation. Sie werden ihre normale Routine im Kampf fortsetzen. Es wird auch die Flucht beenden, wenn zuvor das 'Fliehen' Kommando benutzt wurde.";
    L["TooltipHelp16"] = "Der ausgewählte Bot folgt Dir. Das ist besonders nützlich, um den vorherigen 'Fliehen' Befehl zu stoppen.";
    L["TooltipHelp17"] = "Alle Bots in Deiner Gruppe lernen Zauber vom ausgewählten Händler. Mögliche Ziele sind Klassen-Lehrer und Berufe-Lehrer.";
    L["TooltipHelp18"] = "Alle Bots in Deiner Gruppe lassen den Geist frei. Du kannst den Teleport-Befehl verwenden, um die Bots zu Dir zurückzubringen. Dies kann nur in einem Dungeon verwendet werden.";
    L["TooltipHelp19"] = "Der ausgewählte Bot lässt den Geist frei. Du kannst den Teleport-Befehl verwenden, um den Bot zu Dir zurückzubringen. Dies kann nur in einem Dungeon verwendet werden.";
    L["TooltipHelp20"] = "Überprüft den Quest-Status aller Bots in Deiner Gruppe. Es wird Dir sagen, wie viele Quests abgeschlossen sind und wie viele in Arbeit sind.";
    L["TooltipHelp21"] = "Überprüft den Queststatus des ausgewählten Bots. Es wird Dir sagen, wie viele Quests abgeschlossen sind und wie viele in Arbeit sind.";
    L["TooltipHelp22"] = "View the current status of all bots in the team, including: what percentage of experience the current level has, the number of remaining backpack slots, and the amount of remaining money."; -- Needs correction
    L["TooltipHelp23"] = "View the current status of the selected bot, including: what percentage of experience the current level has, the number of remaining backpack grids, and the amount of remaining money."; -- Needs correction
    L["TooltipHelp24"] = "Makes all bots in your group collect loot from nearby dead enemies.";
    L["TooltipHelp25"] = "Makes all bots in the team run away, abandon the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp26"] = "Let the tank robot in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp27"] = "Let the dps robot in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp28"] = "Have the healer bots in the team run away, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp29"] = "Let the melee bots in the team run away, give up the fight, and run to your own position to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp30"] = "Let the ranged bots in the team run away, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp31"] = "Makes the chosen bot escape, give up the fight, and run to your own location to follow you. (You can use the follow command to cancel this effect, command 15 or 16 follow)"; -- Needs correction
    L["TooltipHelp32"] = "Lässt alle Bots in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp33"] = "Lässt Tank Bots in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp34"] = "Lässt DPS Bots in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp35"] = "Lässt Heiler in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp36"] = "Lässt Nahkampf in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp37"] = "Lässt Fernkampf Bots in Deiner Gruppe das ausgewählte Ziel angreifen.";
    L["TooltipHelp38"] = "Die Bots in Deiner Grupe wechseln in eine Pfeil-Formation. Vorne sind Tanks, gefolgt von nahkämpfern, Fernkämpfern, und Heilern am Ende.";
    L["TooltipHelp39"] = "Die Bots in Deiner Grupe wechseln in eine Defensive-Formation.";
    L["TooltipHelp40"] = "Die Bots in Deiner Grupe wechseln in eine dichten Formation.";
    L["TooltipHelp41"] = "Lässt alle Bots im Team für den in position für den Nahkampfmodus wechseln."; -- Needs correction
    L["TooltipHelp42"] = "Lässt alle Bots im Team in einer kreisförmigen Form stehen, Tanks und Nahkämpfer in der Mitte, während Fernkämpfer und Heiler in einem größeren Kreis außenrum stehen."; -- Needs correction
    L["TooltipHelp43"] = "Let all the bots in the team stand in the shape of a phalanx, just like the phalanx on the ancient Roman battlefield."; -- Needs correction
    L["TooltipHelp44"] = "Let all the bots in the team move with you one by one. After the first movement is completed, the second one starts to move and spread out their positions."; -- Needs correction
    L["TooltipHelp45"] = "Lass sich alle Bots im Team verteilen und Dir einer nach dem anderen folgen."; -- Needs correction
    L["TooltipHelp46"] = "Überprüft die aktuelle Formation aller Bots in Deiner Gruppe.";
    L["TooltipHelp47"] = "Lässt alle Bots in Deiner Gruppe still stehen. Sie können ihre normale Routine im Kampf weiter fortsetzen, werden aber nach dem Verlassen des Kampfes wieder still stehen.";
    L["TooltipHelp48"] = "Automatisches auswählen von Zielen für diesen Bot. Der Bot wird bei Beginn des Kampfes automatisch das Ziel zum angreifen auswählen. Das Agriffs Kommando für diesen Bot nicht gültig."; -- Needs correction
    L["TooltipHelp49"] = "Manuelles auswählen von Zielen für diesen Bot. Der Spieler wählt den Bot aus nachdem der Kampf begonnen hat, und wählt das anzugreifende Ziel aus. Der Bot wird nciht automatisch das Ziel wechseln. Anders gesagt, die DPS und TANK Strategien sind in diesem Kampf-Modus ungültig, und stattdessen ist das Agriffs Kommando für diesen Bot gültig."; -- Needs correction
    L["TooltipHelp50"] = "Der ausgewählte Druiden Bot verwendet Zauber-DPS im Kampf und verwendet die Mondkin Gestalt sofern verfügbar."; -- Needs correction
    L["TooltipHelp51"] = "Der ausgewählte Druiden Bot verwendet Bären- oder Terrorbärenform, um mehr Monster während des Kampfes zu tanken."; -- Needs correction
    L["TooltipHelp52"] = "Verwende Katzenform DPS in ausgewählten Druiden-Bot Kämpfen."; -- Needs correction
    L["TooltipHelp53"] = "Der ausgewählte Druiden-Bot befindet sich im Heilermodus während des Kampfes."; -- Needs correction
    L["TooltipHelp54"] = "Öffnet den Strategie-Editor für den ausewählten Bot. Mit dem Editor kannst Du festlegen, wie sich der Bot sowohl innerhalb als auch außerhalb des Kampfes verhält.";
    L["TooltipHelp55"] = "Lässt den ausgewählten Paladin Bot die Frostwiderstands Aura verwenden.";
    L["TooltipHelp56"] = "Lässt den ausgewählten Paladin Bot die Feuerwiderstands Aura verwenden.";
    L["TooltipHelp57"] = "Lässt den ausgewählten Paladin Bot die Hingabe Aura verwenden.";
    L["TooltipHelp58"] = "Lässt den ausgewählten Paladin Bot die Kreuzfahrer Aura verwenden.";
    L["TooltipHelp59"] = "Lässt den ausgewählten Paladin Bot Segen der Könige auf andere Mitglieder Deiner Gruppe wirken";
    L["TooltipHelp60"] = "Lässt den ausgewählten Paladin Bot Segen der Weisheit auf andere Mitglieder Deiner Gruppe wirken.";
    L["TooltipHelp61"] = "Lässt den ausgewählten Paladin Bot Segen der Macht auf andere Mitglieder Deiner Gruppe wirken.";
    L["TooltipHelp62"] = "Prüft den AI Status aller Bots in Deiner Gruppe.";
    L["TooltipHelp63"] = "Prüft den AI Status des ausgewählten Bots.";
    L["TooltipHelp64"] = "Öffnet das Inventar des ausgewählten Bots.";
    L["TooltipHelp65"] = "Öffnet das Inventar des ausgewählten Bots, damit er Gegenstände wegwerfen kann.";
    L["TooltipHelp66"] = "Öffnet das Inventar des ausgewählten Bots, damit er Gegenstände ausrüsten kann.";
    L["TooltipHelp67"] = "Öffnet das Inventar des ausgewählten Bots, damit er Gegenstände verkaufen kann. Du musst nach dem Öffnen des Inventars einen Händler ansprechen, um Gegenstände verkaufen zu können.";
    L["TooltipHelp68"] = "Öffnet das Inventar des ausgewählten Bots, damit er Gegenstände verwenden kann.";
    L["TooltipHelp69"] = "Überprüft die Zaubersprüche, die der ausgewählte Bot hat.";
    L["TooltipHelp70"] = "Lässt alle in Deiner Gruppe, einschließlich Dir selbst, den Kampf verlassen. (Nur GM)";
    L["TooltipHelp71"] = "Let all players in the team leave the team, and the bots can leave the team one by one to avoid being unable to form these bots after you leave the team."; -- Needs correction
    L["TooltipHelp72"] = "Öffnet ein Fenster, in dem alle in World of Warcraft verfügbaren Symbole aufgeführt sind.";
    L["TooltipHelp73"] = "Teleportiert Dich zum ausgewählten Spieler. (Nur GM)";
    L["TooltipHelp74"] = "Öffnet ein Fenster, das alle Bots auf Deiner Freundesliste und in Deiner Gilde anzeigt. Die linke Maustaste lässt einen Bot online kommen, während die rechte Maustaste ihn in Deine Gruppe einlädt.";
    L["TooltipHelp75"] = "Zeige die 'Außerhalb des Kampfes' Strategien für den ausgewählten Bot an"; -- Needs correction
    L["TooltipHelp76"] = "Lässt einen Bot still stehen. Der Bot kann seine normale Routine während des Kampfes fortsetzen, wird aber nach dem Verlassen des Kampfes zum Stehen zurückkehren.";
    L["TooltipHelp77"] = "Öffnet ein Fenster, mit dem Du einen Bot beschwören können.";
    L["TooltipHelp78"] = "Lässt alle Bots auf Deiner Freundesliste online kommen.";
    L["TooltipHelp79"] = "Lädt alle auf Deiner Freundesliste in Deine Gruppe ein. Wenn die Gruppe voll ist, während die Einladungen noch stattfinden, wird der Prozess abgebrochen.";
    L["TooltipHelp80"] = "Execute a team's position confirmation and let the bot automatically replenish food, drink, ammunition and arrows according to the situation."; -- Needs correction
    L["TooltipHelp81"] = "Lässt alle Bots in Deiner Gruppe Wasser trinken um Mana zu regenerieren.";
    L["TooltipHelp82"] = "Lässt alle Bots in Deiner Gruppe offline gehen.";
    L["TooltipHelp83"] = "Lässt alle Bots in Deiner Gruppe online kommen.";
    L["TooltipHelp84"] = "Aktiviert das Naxxramas Modul für alle Bots in Deiner Gruppe. Dies ist nur in Naxxramas verwendbar.";
    L["TooltipHelp85"] = "Setzt die Aktionen für alle Bots in Deiner Gruppe zurück.";
    L["TooltipHelp86"] = "Lässt den ausgewählten Bot offline gehen.";
    L["TooltipHelp87"] = "Lässt den ausgewählten Bot online kommen.";
    L["TooltipHelp88"] = "Fügt alle Bots Deiner Gruppe Deiner Freundesliste hinzu.";
    L["TooltipHelp89"] = "Lass alle Bots automatisch in der Nähe befindliche Kreaturen angreifen welche ihnen Erfahrung bringen.";

    -----------------------------------------------------------------------------------------------
    --- UnBot.lua ---
    -----------------------------------------------------------------------------------------------
    
    L["Bar is now hidden. Use /unbot to toggle the bar."]   = "Die Leiste ist jetzt versteckt. Verwende /unbot um die Anzeige umzuschalten.";
    L["Window initialization failed: "]                     = "Die Fensterinitialisierung ist fehlgeschlagen: ";
    L["InspectFrame_Show "]                                 = "InspectFrame_Show ";
    L["Initializing bot controller"]                        = "Initialisiere Bot Controller";
    L["Bot controller initialized"]                         = "Bot Controller initialisiert";
    L["Target:"]                                            = "Ziel:";
    L["Uses:"]                                              = "Verwendet:";
    L["LMB: Use"]                                           = "LMB: Benutzen";
    L["RMB: Toggle button group"]                           = "RMB: Button Gruppe umschalten";
    L["RMB: Set shortcut"]                                  = "RMB: Setze Shortcut";
    L["RMB: Hide the bar"]                                  = "RMB: Leiste ausblenden";
 
    L["Select reward"]                                      = "Belohnung auswählen";
    L["Could not find order "]                              = "Konnte Befehl nicht finden ";
    L["You have no target."]                                = "Du hast kein Ziel.";
    L["The target is not in your group."]                   = "Das Ziel befindet sich nicht in Deiner Gruppe.";
     
    L["You click button index "]                            = "Du klickst auf die Schaltfläche index ";
    L[", execute "]                                         = ", ausführen ";

    -----------------------------------------------------------------------------------------------
    --- UnBotBags.lua ---
    -----------------------------------------------------------------------------------------------
    
    -- UnBotBags.lua -> UnBotGetCostEnergyText
    L["Consume"] = "Verbrauchen";
    L["Mana"] = "Mana";
    L["Rage"] = "Wut";
    L["Energy"] = "Energie";
    L["Resource"] = "Ressource";

    -- UnBotBags.lua -> UnBotShowButtonTips
    L["item:"] = "item:";
    L["Quantity owned "] = "Menge im Besitz ";

    L[" yards"] = " Meter";
    L["Instant"] = "Sofort";
    L["Cast time: "] = "Zauberzeit: ";
    L[" second(s)"] = " Sekunde(n)";

    L["ITEM_NOT_IN_BAG_REFRESH"] = "Dieser Artikel wurde nicht in Deinem Rucksack gefunden. Du musst den Server abfragen. Bitte klicke unten in der Schnittstelle auf die Schaltfläche Aktualisieren, um sie anzuzeigen.";
    
    L["LMB: Equip"] = "LMB: Ausrüsten";
    L["LMB: Discard"] = "LMB: Wegwerfen";
    L["LMB: Sell"] = "LMB: Verkaufen";
    L["LMB: Use"] = "LMB: Benutzen";
    L["LMB: Cast"] = "LMB: Zaubern";
    L["LMB: Let"] = "LMB: Lass";

    L["RMB: Hide"] = "RMB: Ausblenden";

    L["Index:"] = "Index:";

    -- CreateBagsTypeOptions
    L["View"] = "Ansicht";
    L["Inventory"] = "Inventar";
    L["Equip"] = "Ausrüsten";
    L["Equip item"] = "Gegenstand ausrüsten";
    L["Discard"] = "Wegwerfen";
    L["Discard item"] = "Gegenstand wegwerfen";
    L["Sell"] = "Verkaufen";
    L["Sell item"] = "Gegenstand verkaufen";
    L["Use"] = "Benutzen";
    L["Use item"] = "Gegenstand benutzen";

    -- CreateOptionByParent
    L["Refresh"] = "Aktualisieren";

    -- UpdateUnBotBagsFramePage
    L["Page "] = "Seite ";
    L[" of "] = " von ";

    -- ExecuteCommandByBagsItem
    L["You have no vendor targeted."] = "Du hast keinen Händler angewählt";

    -- FlushItemsToBags
    L["c"] = "c";
    L["spells"] = "Zauber";

    -- RecvMuchSpellToBags
    L["Recv spell id "] = "Recv Zauber id "; -- ???
    L[" error."] = " Fehler.";

end