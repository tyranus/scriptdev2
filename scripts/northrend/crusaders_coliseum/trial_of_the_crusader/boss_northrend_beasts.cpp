/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
// Gormok - Firebomb not implemented, timers need correct
// Snakes - Underground phase not worked, timers need correct
// Icehowl - Trample&Crash event not implemented, timers need correct

/* ScriptData
SDName: northrend_beasts
SD%Complete: 60% 
SDComment: by /dev/rsa
SDCategory:
EndScriptData */

#include "precompiled.h"
#include "trial_of_the_crusader.h"

enum Equipment
{
    EQUIP_MAIN           = 50760,
    EQUIP_OFFHAND        = 48040,
    EQUIP_RANGED         = 47267,
    EQUIP_DONE           = EQUIP_NO_CHANGE,
};

enum Summons
{
    NPC_SNOBOLD_VASSAL   = 34800,
    NPC_SLIME_POOL       = 35176,
    NPC_FIRE_BOMB        = 34854,
};

enum BossSpells
{
SPELL_IMPALE           = 66331,
SPELL_STAGGERING_STOMP = 67648,
SPELL_RISING_ANGER     = 66636,
SUMMON_SNOBOLD         = NPC_SNOBOLD_VASSAL,
SPELL_ACID_SPIT        = 66880,
SPELL_PARALYTIC_SPRAY  = 66901,
SPELL_ACID_SPEW        = 66819,
SPELL_PARALYTIC_BITE   = 66824,
SPELL_SWEEP_0          = 66794,
SPELL_SLIME_POOL       = 67642,
SPELL_FIRE_SPIT        = 66796,
SPELL_MOLTEN_SPEW      = 66821,
SPELL_BURNING_BITE     = 66879,
SPELL_BURNING_SPRAY    = 66902,
SPELL_SWEEP_1          = 67646,
SPELL_FEROCIOUS_BUTT   = 66770,
SPELL_MASSIVE_CRASH    = 66683,
SPELL_WHIRL            = 67345,
SPELL_ARCTIC_BREATH    = 66689,
SPELL_TRAMPLE          = 66734,
SPELL_SNOBOLLED        = 66406,
SPELL_BATTER           = 66408,
SPELL_FIRE_BOMB        = 66313,
SPELL_FIRE_BOMB_1      = 66317,
SPELL_FIRE_BOMB_DOT    = 66318,
SPELL_HEAD_CRACK       = 66407,
SPELL_SUBMERGE_0       = 53421,
SPELL_BERSERK          = 26662,
SPELL_ENRAGE           = 68335,
};

struct MANGOS_DLL_DECL boss_gormokAI : public ScriptedAI
{
    boss_gormokAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint8 Difficulty;
    uint8 SnoboldsCount;
    BossSpellWorker* bsw; 

    void Reset() {

        if(!m_pInstance) return;
        Difficulty = m_pInstance->GetData(TYPE_DIFFICULTY);
        bsw = new BossSpellWorker(this);
        bsw->Reset(Difficulty);
        SetEquipmentSlots(false, EQUIP_MAIN, EQUIP_OFFHAND, EQUIP_RANGED);
        m_creature->SetRespawnDelay(DAY);
        m_creature->SetInCombatWithZone();
        SnoboldsCount = 4;
    }

    void JustDied(Unit* pKiller)
    {
        if (!m_pInstance) return;
        m_pInstance->SetData(TYPE_NORTHREND_BEASTS, GORMOK_DONE);
    }

    void JustReachedHome()
    {
        if (!m_pInstance) return;
            m_pInstance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
            m_creature->ForcedDespawn();
    }

    void Aggro(Unit* pWho)
    {
        m_pInstance->SetData(TYPE_NORTHREND_BEASTS, GORMOK_IN_PROGRESS);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        bsw->timedCast(SPELL_IMPALE, uiDiff);

        bsw->timedCast(SPELL_STAGGERING_STOMP, uiDiff);

        if (bsw->timedQuery(SUMMON_SNOBOLD, uiDiff) && SnoboldsCount > 0 ) {
                        bsw->doCast(SUMMON_SNOBOLD);
                        DoScriptText(-1713601,m_creature);
                        --SnoboldsCount;
                        };

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_gormok(Creature* pCreature)
{
    return new boss_gormokAI(pCreature);
}

struct MANGOS_DLL_DECL mob_snobold_vassalAI : public ScriptedAI
{
    mob_snobold_vassalAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint8 Difficulty;
    BossSpellWorker* bsw;
    Unit* pBoss;
    Unit* defaultTarget;

    void Reset()
    {
        bsw = new BossSpellWorker(this);
        Difficulty = m_pInstance->GetData(TYPE_DIFFICULTY);
        bsw->Reset(Difficulty);
        m_creature->SetInCombatWithZone();
        m_creature->SetRespawnDelay(DAY);
        pBoss = (Creature*)Unit::GetUnit((*m_creature),m_pInstance->GetData64(NPC_GORMOK));
        if (pBoss) bsw->doCast(SPELL_RISING_ANGER,pBoss);
    }

    void Aggro(Unit *who)
    {
        if (!m_pInstance) return;
        defaultTarget = who;
        bsw->doCast(SPELL_SNOBOLLED, defaultTarget);
    }

    void JustDied(Unit* pKiller)
    {
    if (defaultTarget) bsw->doRemove(SPELL_SNOBOLLED, defaultTarget);
      if (pBoss && pBoss->isAlive()) bsw->doRemove(SPELL_RISING_ANGER,pBoss);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != GORMOK_IN_PROGRESS) {
                if (defaultTarget && defaultTarget->isAlive())
                      bsw->doRemove(SPELL_SNOBOLLED, defaultTarget);
            m_creature->ForcedDespawn();
            }

        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        bsw->timedCast(SPELL_BATTER, uiDiff);

        if (bsw->timedCast(SPELL_FIRE_BOMB, uiDiff, m_creature->getVictim()) == CAST_OK) {
        bsw->doCast(SPELL_FIRE_BOMB_1, m_creature->getVictim());
        bsw->doCast(SPELL_FIRE_BOMB_DOT, m_creature->getVictim());
        }

        bsw->timedCast(SPELL_HEAD_CRACK, uiDiff);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_mob_snobold_vassal(Creature* pCreature)
{
    return new mob_snobold_vassalAI(pCreature);
}

struct MANGOS_DLL_DECL boss_acidmawAI : public ScriptedAI
{
    boss_acidmawAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint8 Difficulty;
    BossSpellWorker* bsw;
    uint8 stage;
    bool enraged;

    void Reset()
    {
        Difficulty = m_pInstance->GetData(TYPE_DIFFICULTY);
        stage = 1;
        enraged = false;
        m_creature->SetInCombatWithZone();
        bsw = new BossSpellWorker(this);
        bsw->Reset(Difficulty);
        m_creature->SetRespawnDelay(DAY);
    }

    void JustDied(Unit* pKiller)
    {
        if (!m_pInstance) return;
            if (Creature* pSister = (Creature*)Unit::GetUnit((*m_creature),m_pInstance->GetData64(NPC_DREADSCALE)))
               if (!pSister->isAlive())
                         m_pInstance->SetData(TYPE_NORTHREND_BEASTS, SNAKES_DONE);
                else m_pInstance->SetData(TYPE_NORTHREND_BEASTS, SNAKES_SPECIAL);
    }

    void JustReachedHome()
    {
        if (!m_pInstance) return;
        if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != FAIL)
                        m_pInstance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
            m_creature->ForcedDespawn();
    }

    void Aggro(Unit* pWho)
    {
    }

    void UpdateAI(const uint32 uiDiff)
    {

        if ((!m_creature->SelectHostileTarget() || !m_creature->getVictim()) 
        && (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != ACIDMAW_SUBMERGED))
            return;

    switch (stage) 
        {
        case 0: {
                bsw->timedCast(SPELL_ACID_SPEW, uiDiff);

                bsw->timedCast(SPELL_PARALYTIC_BITE, uiDiff);

                bsw->timedCast(SPELL_SLIME_POOL, uiDiff);

                if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == ACIDMAW_SUBMERGED)
                     stage = 1;

                    break;}
        case 1: {
                    bsw->doCast(SPELL_SUBMERGE_0);
                    m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    stage = 2;
                    DoScriptText(-1713557,m_creature);
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ACIDMAW_SUBMERGED);
                    break;}
        case 2: {
                bsw->timedCast(SPELL_ACID_SPIT, uiDiff);

                bsw->timedCast(SPELL_PARALYTIC_SPRAY, uiDiff);

                bsw->timedCast(SPELL_SWEEP_0, uiDiff);

                if (bsw->timedQuery(SPELL_SUBMERGE_0, uiDiff) && m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == ACIDMAW_SUBMERGED) 
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, DREADSCALE_SUBMERGED);

                if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != ACIDMAW_SUBMERGED) 
                        stage = 3;

                    break;}
        case 3: {
                    DoScriptText(-1713559,m_creature);
                    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    bsw->doRemove(SPELL_SUBMERGE_0);
                    stage = 0;
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, DREADSCALE_SUBMERGED);
                    break;}
        }

        if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == SNAKES_SPECIAL && !enraged)
                        {
                        bsw->doRemove(SPELL_SUBMERGE_0);
                        bsw->doCast(SPELL_ENRAGE);
                        enraged = true;
                        stage = 0;
                        DoScriptText(-1713504,m_creature);
                        };


        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_acidmaw(Creature* pCreature)
{
    return new boss_acidmawAI(pCreature);
}

struct MANGOS_DLL_DECL boss_dreadscaleAI : public ScriptedAI
{
    boss_dreadscaleAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint8 Difficulty;
    BossSpellWorker* bsw;
    uint8 stage;
    bool enraged;

    void Reset()
    {
        Difficulty = m_pInstance->GetData(TYPE_DIFFICULTY);
        stage = 0;
        enraged = false;
        m_creature->SetInCombatWithZone();
        bsw = new BossSpellWorker(this);
        bsw->Reset(Difficulty);
        m_creature->SetRespawnDelay(DAY);
    }

    void JustDied(Unit* pKiller)
    {
        if (!m_pInstance) return;
            if (Creature* pSister = (Creature*)Unit::GetUnit((*m_creature),m_pInstance->GetData64(NPC_ACIDMAW)))
               if (!pSister->isAlive())
                         m_pInstance->SetData(TYPE_NORTHREND_BEASTS, SNAKES_DONE);
                else m_pInstance->SetData(TYPE_NORTHREND_BEASTS, SNAKES_SPECIAL);
    }

    void JustReachedHome()
    {
        if (!m_pInstance) return;
        if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != FAIL)
                        m_pInstance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
            m_creature->ForcedDespawn();
    }

    void Aggro(Unit* pWho)
    {
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if ((!m_creature->SelectHostileTarget() || !m_creature->getVictim()) 
        && (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != DREADSCALE_SUBMERGED))
            return;

        switch (stage) 
        {
        case 0: {
                bsw->timedCast(SPELL_BURNING_BITE, uiDiff);

                bsw->timedCast(SPELL_MOLTEN_SPEW, uiDiff);

                bsw->timedCast(SPELL_SLIME_POOL, uiDiff);

                if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == DREADSCALE_SUBMERGED)
                     stage = 1;

                    break;}
        case 1: {
                    bsw->doCast(SPELL_SUBMERGE_0);
                    m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    stage = 2;
                    DoScriptText(-1713557,m_creature);
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, DREADSCALE_SUBMERGED);
                    break;}
        case 2: {
                bsw->timedCast(SPELL_FIRE_SPIT, uiDiff);

                bsw->timedCast(SPELL_BURNING_SPRAY, uiDiff);

                bsw->timedCast(SPELL_SWEEP_0, uiDiff);

                if (bsw->timedQuery(SPELL_SUBMERGE_0, uiDiff) && m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == DREADSCALE_SUBMERGED) 
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ACIDMAW_SUBMERGED);

                if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) != DREADSCALE_SUBMERGED)
                    stage = 3;

                    break;}
        case 3: {
                    DoScriptText(-1713559,m_creature);
                    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    bsw->doRemove(SPELL_SUBMERGE_0);
                    stage = 0;
                    m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ACIDMAW_SUBMERGED);
                    break;}
        }

        if (m_pInstance->GetData(TYPE_NORTHREND_BEASTS) == SNAKES_SPECIAL && !enraged)
                        {
                        bsw->doRemove(SPELL_SUBMERGE_0);
                        bsw->doCast(SPELL_ENRAGE);
                        enraged = true;
                        stage = 0;
                        DoScriptText(-1713504,m_creature);
                        };

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_dreadscale(Creature* pCreature)
{
    return new boss_dreadscaleAI(pCreature);
}

struct MANGOS_DLL_DECL boss_icehowlAI : public ScriptedAI
{
    boss_icehowlAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint8 Difficulty;
    BossSpellWorker* bsw;

    void Reset() {
        if(!m_pInstance) return;
        Difficulty = m_pInstance->GetData(TYPE_DIFFICULTY);
        bsw = new BossSpellWorker(this);
        bsw->Reset(Difficulty);
        m_creature->SetRespawnDelay(DAY);
    }

    void JustDied(Unit* pKiller)
    {
        if (!m_pInstance) return;
            m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ICEHOWL_DONE);
    }

    void JustReachedHome()
    {
        if (!m_pInstance) return;
            m_pInstance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
            m_creature->ForcedDespawn();
    }

    void Aggro(Unit* pWho)
    {
        m_creature->SetInCombatWithZone();
        m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ICEHOWL_IN_PROGRESS);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        bsw->timedCast(SPELL_FEROCIOUS_BUTT, uiDiff);

        bsw->timedCast(SPELL_ARCTIC_BREATH, uiDiff);

        bsw->timedCast(SPELL_WHIRL, uiDiff);

        if (bsw->timedQuery(SPELL_MASSIVE_CRASH, uiDiff))
                        {
                        bsw->doCast(SPELL_MASSIVE_CRASH);
                        DoScriptText(-1713506,m_creature,bsw->currentTarget);
                        }

//        if (bsw->timedCast(SPELL_TRAMPLE, uiDiff) != CAST_OK)
//                                DoScriptText(-1713507,m_creature);

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_icehowl(Creature* pCreature)
{
    return new boss_icehowlAI(pCreature);
}

void AddSC_northrend_beasts()
{
    Script* newscript;

    newscript = new Script;
    newscript->Name = "boss_gormok";
    newscript->GetAI = &GetAI_boss_gormok;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_acidmaw";
    newscript->GetAI = &GetAI_boss_acidmaw;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_dreadscale";
    newscript->GetAI = &GetAI_boss_dreadscale;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "boss_icehowl";
    newscript->GetAI = &GetAI_boss_icehowl;
    newscript->RegisterSelf();

    newscript = new Script;
    newscript->Name = "mob_snobold_vassal";
    newscript->GetAI = &GetAI_mob_snobold_vassal;
    newscript->RegisterSelf();

}
