/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: gmvendor
SD%Complete: 100
SDComment: GMVendor Master
SDCategory: NPC
EndScriptData */

#include "precompiled.h"
#include "../../../../shared/Config/Config.h"
#include "../../config.h"

bool GossipHello_GMVendor(Player* pPlayer, Creature* pCreature)
{
	Config SD2Config;
	if(!SD2Config.SetSource(_SCRIPTDEV2_CONFIG,true))
		error_log("SD2: Unable to open configuration file");

	if(SD2Config.GetBoolDefault("GMVendor.OnlyGMs", false)) // If GMVendor.OnlyGMs is enabled in scriptdev2.conf
		if (pPlayer->GetSession()->GetSecurity() == SEC_PLAYER)
		{
			pCreature->MonsterWhisper("Somente para Vip! Acesse www.bloodarena.com.br e adquira o Vip.", pPlayer->GetGUID());
			return true;
		}
    pPlayer->GetSession()->SendListInventory(pCreature->GetGUID());

return true;
}

void SendDefaultMenu_GMVendor(Player* pPlayer, Creature* pCreature, uint32 uiAction)
{

// Not allow in combat
if (pPlayer->isInCombat())
{
    pPlayer->CLOSE_GOSSIP_MENU();
    pCreature->MonsterSay("Em combate nao pode nene!", LANG_UNIVERSAL, NULL);
	return;
}

} //end of function



bool GossipSelect_GMVendor(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
{
    // Main menu
    SendDefaultMenu_GMVendor(pPlayer, pCreature, uiAction);

return true;
}

void AddSC_gmvendor()
{
    Script *newscript;

    newscript = new Script;
    newscript->Name = "gmvendor";
    newscript->pGossipHello = &GossipHello_GMVendor;
    newscript->pGossipSelect = &GossipSelect_GMVendor;
    newscript->RegisterSelf();
}