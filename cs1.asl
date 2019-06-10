state ("ed8") {

    byte fadeToBlack : 0x87F1E0;
    byte textOnScreen :  0x93212D;
    byte orbmentHeal : 0x8775D8, 0xE2C;
    byte checkingQuests : 0x9A83C8;
    byte tutorialCard1 : 0x9329B6;
    byte tutorialCard2 : 0x932AF6;
    byte tutorialCard3 : 0x932C36;
    byte tutorialCard4 : 0x932D76;
    byte tutorialCardSafety : 0x9329D6;
    byte resultCards : 0x9A8418; //2 on reporting quests, 96 on part end
    byte actEnd : 0x87E7AD;
    byte battleFlag : 0x87E341;
    ulong navigationMenu : 0x93212C;
    byte fastTravelMenu : 0x87EC8C;
    int choicesDisplayed : 0x93212C, 0x4, 0x144;
    
    byte cutsceneFlag : 0x87F1F0; 
    ushort cutsceneID : 0x8775D8, 0xE28;
    ushort bgmID: 0x93237A;    	
    
    ushort battleID : 0x8775D8, 0x57D0;  
    byte currentPart : 0x87EB98;  
    
    float xAxisPos : 0x87DAA0, 0xAC, 0x8, 0xC8;
    float zAxisPos : 0x87DAA0, 0xAC, 0x8, 0xD0;
    byte currentPartyLeader : 0x87DAA0, 0xAC;
    ushort roomID : 0x87E360;

}


startup {
    
    
    settings.Add("remove_BGM_change", true, "Stop the timer while the background music is changing");
    
    settings.Add("partSplit", true, "Split part ends");
        settings.CurrentDefaultParent = "partSplit";
        settings.Add("prologue_end", true, "Autosplit prologue end");
        settings.Add("chapter1_end", true, "Autosplit chapter 1 end");
        settings.Add("chapter2_end", true, "Autosplit chapter 2 end");
        settings.Add("chapter3_end", true, "Autosplit chapter 3 end");
        settings.Add("chapter4_end", true, "Autosplit chapter 4 end");
        settings.Add("chapter5_end", true, "Autosplit chapter 5 end");
        settings.Add("chapter6_end", true, "Autosplit chapter 6 end");
    
    //enemies/cutscenes
    
    settings.CurrentDefaultParent = null;
    settings.Add ("enemy_splitting", true, "Enable/Disable automatic boss/cutscene splits");
    settings.CurrentDefaultParent = "enemy_splitting";
        settings.Add("prologue", true, "Autosplit during prologue");
            settings.CurrentDefaultParent = "prologue";
            settings.Add("first_garrelia", false, "Split the first Garrelia Fortress fight.");
            settings.Add("second_garrelia", true, "Split the second Garrelia Fortress fight.");
            settings.Add("first_prologue", false, "Split the first Old Schoolhouse tutorial fight.");
            settings.Add("second_prologue", false, "Split the second Old Schoolhouse tutorial fight.");
            settings.Add("third_prologue", false, "Split the third Old Schoolhouse tutorial fight.");
            settings.Add("gargoyle", true, "Split the Gargoyle.");
            
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter1", true, "Autosplit during chapter 1");
        settings.CurrentDefaultParent = "chapter1";
        
            settings.Add("link_tutorial", false, "Split the link tutorial fight.");
            settings.Add("minos_demon", true, "Split the Minos Demon (Old Schoolhouse boss).");
            settings.Add("exam1", true, "Split the first practical exam.");
            settings.Add("wolves", false, "Split the Fanged Wolves S-Break tutorial fight.");
            settings.Add("dino", true, "Split the Scary Dinosaur (great name Falcom).");
            settings.Add("zwordar", true, "Split the Zwordar.");
            settings.Add("rangers", true, "Split the imposter park rangers.");
            settings.Add("grunoja", true, "Split Grunoja.");
            
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter2", true, "Autosplit during chapter 2");
        settings.CurrentDefaultParent = "chapter2";
        
            settings.Add("cherubic_gate", true, "Split the Cherubic Gates (Old Schoolhouse boss).");
            settings.Add("exam2", false, "Split the second practical exam.");
            settings.Add("purple_lightning", true, "Split the Sara unwinnable fight.");
            settings.Add("fate_spinner", true, "Split the Fate Spinner.");
            settings.Add("plantix", true, "Split the Plantix.");
            settings.Add("machias_guards", true, "Split the guards that keep Machias in jail.");
            settings.Add("kazakh_doven", true, "Split the Kazakh Doven (doggos).");
            
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter3", true, "Autosplit during chapter 3");
        settings.CurrentDefaultParent = "chapter3";
        
            settings.Add("pit_demon", true, "Split the Pit Demons (Old Schoolhouse boss).");
            settings.Add("exam3", true, "Split the third practical exam (Patrick's).");
            settings.Add("thunder_quaker", true, "Split the Thunder Quaker.");
            settings.Add("millium", true, "Split Millium.");
            settings.Add("gideon", true, "Split G.");
            settings.Add("ginosha", true, "Split Ginosha-Zanak.");
            
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter4", true, "Autosplit during chapter 4");
        settings.CurrentDefaultParent = "chapter4";
        
            settings.Add("seraphic_gate", true, "Split the Seraphic Gates (Old Schoolhouse boss).");
            settings.Add("Ol-Gadia1", false, "Split the Spirit Unification Rean Ol-Gadia fight.");
            settings.Add("Ol-Gadia2", true, "Split the Crow + Rean Ol-Gadia fight.");
            settings.Add("exam4", true, "Split the fourth practical exam.");
            settings.Add("giant_drome", true, "Split the Giant Drome.");
            settings.Add("rean", true, "Split Rean and Machias (Fie and Laura's fight).");
            settings.Add("sharkodile", true, "Split the Sharkodile.");
            settings.Add("cursed_sculpture", true, "Split the Cursed Sculptures.");
            settings.Add("zoro-agruga", true, "Split Zoro-Agruga.");
            settings.Add("my_name_is_C", true, "Split the C unwinnable fight.");
          
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter5", true, "Autosplit during chapter 5");
        settings.CurrentDefaultParent = "chapter5";
        
            settings.Add("unsurtr", true, "Split Unsurtr (Old Schoolhouse boss).");
            settings.Add("exam5_1", true, "Split the boys' group practical exam fight.");
            settings.Add("exam5", true, "Split the girl's group practical exam fight.");
            settings.Add("klaus", true, "Split Klaus.");
            settings.Add("crocodark", true, "Split the Crocodarks.");
            settings.Add("victor", true, "Split the first Victor unwinnable fight.");
            settings.Add("victor2", true, "Split the Spirit Unification Rean Victor unwinnable fight.");
            settings.Add("phalanx_j9", true, "Split the Phalanx J9.");
            settings.Add("nosferatu", true, "Split Nosferatu.");
            settings.Add("garrelia1", true, "Split the first Garrelia fight.");
            settings.Add("garrelia2", true, "Split the second Garrelia fight.");
            settings.Add("s_soldiers", true, "Split the soldiers before S.");
            settings.Add("scarlet", true, "Split S.");
          
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter6", true, "Autosplit during chapter 6");
        settings.CurrentDefaultParent = "chapter6";
        
            settings.Add("angie", true, "Split Angelica.");
            settings.Add("evalvria", true, "Split the Evalvrias (Old Schoolhouse boss).");
            settings.Add("exam6", true, "Split the practical exam.");
            settings.Add("gold_fungus", true, "Split the Gold Fungus.");
            settings.Add("hydra", true, "Split the Hydra.");
            settings.Add("zephyrantes", true, "Split the Zephyrantes.");
            settings.Add("V", true, "Split V.");
            settings.Add("C", true, "Split C.");
          
        settings.CurrentDefaultParent = "enemy_splitting";   
        settings.Add("chapter8", true, "Autosplit during the Final Chapter");
        settings.CurrentDefaultParent = "chapter8";
            
            
            settings.Add("realmOfTheGreatShadow_entrance", true, "Split the cutscene when entering the Realm of the Great Shadow.");
            settings.Add("Loa", true, "Split Loa Erebonius.");
            settings.Add("drakkhen", true, "Split the Drakkhen.");
            settings.Add("spiegel", true, "Split the unwinnable Spiegel fight.");
            settings.Add("spiegel_mech", true, "Split the Spiegel Valimar fight.");
            settings.Add("ordine", true, "Split Ordine, The Azure Knight.");
    
}


init {

    vars.lingeringActEndValue = 0;
    vars.setLingeringActEnd = false;
    vars.actEndIsLingering = false;
    vars.fastTravelValue = 0;
    vars.setFastTravelValue = false;
    vars.inFastTravel = false;
    
    vars.inBattle = false;
    vars.stopwatch = DateTime.Now.TimeOfDay;
    vars.doneWithMilliumAssembly = false;
    vars.doneWithSchoolhouseAssembly = false;
    vars.splitRealmCutscene = !settings["realmOfTheGreatShadow_entrance"];       
    vars.realmCutsceneClearTimes = 0; //cutscene ID bad 

}



update {

    //This is simply a reset of the values for new runs
    if (timer.CurrentPhase == TimerPhase.NotRunning){

        vars.lingeringActEndValue = 0;
        vars.setLingeringActEnd = false;
        vars.actEndIsLingering = false;
        vars.fastTravelValue = 0;
        vars.setFastTravelValue = false;
        vars.inFastTravel = false;
        
        vars.inBattle = false;
        vars.doneWithSchoolhouseAssembly = false;
        vars.doneWithMilliumAssembly = false; 
        vars.realmCutsceneClearTimes = 0;   
        vars.splitRealmCutscene = false;
        vars.realmCutsceneClearTimes = 0;
    }
    
    //The Navigation Menu pointer is really powerful, pointing to most things that make textOnScreen not clear properly
    //However, it also points to some undesirable things, meaning we have to figure out which is which
    
    if ((current.fastTravelMenu & 1<<4) != 0 && current.choicesDisplayed > 0 && current.choicesDisplayed < 20 && current.navigationMenu != 0 && timer.CurrentPhase != TimerPhase.NotRunning){
        vars.fastTravelValue = current.navigationMenu;
        vars.setFastTravelValue = true;
        }
        
    if (vars.setFastTravelValue)
        vars.inFastTravel = vars.fastTravelValue == current.navigationMenu;
 
    if ((current.actEnd & 1) != 0 && !vars.setLingeringActEnd && current.navigationMenu != 0 && timer.CurrentPhase != TimerPhase.NotRunning){
        vars.lingeringActEndValue = current.navigationMenu;
        vars.setLingeringActEnd = true;
     }
        
    if (vars.setLingeringActEnd)
        vars.actEndIsLingering = vars.lingeringActEndValue == current.navigationMenu;    
        
    
    if (current.battleFlag == 48 && current.fadeToBlack != 3 && !vars.inBattle)
        vars.inBattle = true;
    if (vars.inBattle)
        vars.inBattle = current.battleFlag == 48;
     

    //Cutscene ID is pretty bad in this game compared to cs2, meaning it's constantly being reused
    //As such, since I promised to make a split for entering the Realm, there's no other choice but to count the amount of times the ID pops up
    //We'll also count for running the timer on some party selection screens because those are just bad
   
    if(current.currentPart == 8 && current.cutsceneID == 21305 && old.cutsceneID ==0)
        vars.realmCutsceneClearTimes++;
    
    //If we just let cutscene ID handle this party assembly the timer doesn't stop for around half the load (won't stop until the room has actually changed)
    if (current.currentPart == 5 && current.cutsceneID == 21300 && current.choicesDisplayed == 2 &&  current.currentPartyLeader == 0 && current.textOnScreen != 0)
        vars.doneWithMilliumAssembly = true;
   
    //Every schoolhouse party assembly has an ID of 25964, but they play by their own rules:
    
    //Reset the done with assembly var. We need it for the same reason as the millium one
    if(current.cutsceneID == 0 && old.cutsceneID != 0)
        vars.doneWithSchoolhouseAssembly = false;
    
    //We need to add a delay to setting the "done" var to true, because Rean usually talks before each assembly and with 
    //both turbo and a computer bad enough, that can linger enough for the game to think you just prompted the "confirm party" text    
    if (current.cutsceneID == 25964 && old.cutsceneID != 25964)
        vars.stopwatch = DateTime.Now.TimeOfDay;
      
    if( current.cutsceneID == 25964 && current.textOnScreen == 35 && current.choicesDisplayed == 2 && current.currentPartyLeader == 0 && (DateTime.Now.TimeOfDay.TotalSeconds - vars.stopwatch.TotalSeconds > 0.5))
            vars.doneWithSchoolhouseAssembly = true;
         
   
}



start {

    return ( current.cutsceneID == 21297 &&  old.cutsceneID == 0 );
    
}


split {
    
    //Battle splits
    if(current.battleID == 0 && old.battleID != 0){ 
        
      //Considered making this a map instead but I have to do a line per Put anyway so what's the point really 
      switch((ushort)old.battleID){
      
        //Prologue
        
            case 113 : return settings["first_garrelia"];
            
            case 114 : //this ID repeats on chapter 5 so we gotta check
                if(current.currentPart == 0) 
                   return settings["second_garrelia"];
                return settings["garrelia2"]; 
                
            case 10 : return settings["first_prologue"];
            case 11 : return settings["second_prologue"];
            case 12 : return settings["third_prologue"];
            case 105 : return settings["gargoyle"];
        
        //Chapter 1
            
            case 13 : return settings["link_tutorial"];
            case 127 : return settings["minos_demon"];
            case 20 : return settings["exam1"];
            case 14 : return settings["wolves"];
            case 100 : return settings["dino"];
            case 128 : return settings["zwordar"];
            case 133 : return settings["rangers"];
            case 106 : return settings["grunoja"];
            
        //Chapter 2
        
            case 107 : //this ID repeats for every boss that isn't a cryptid or archaism so
                    switch ((short)current.currentPart){
                        case 2 : return settings["cherubic_gate"];
                        case 3 : return settings["pit_demon"];
                        case 4 : return settings["seraphic_gate"];
                    }
                    break; //never needed but refuses to compile without
            
            case 21 : return settings["exam2"];
            case 143 : return settings["purple_lightning"];   
            case 101 : return settings["fate_spinner"];
            case 115 : return settings["plantix"];
            case 134 : return settings ["machias_guards"];
            case 108 : return settings ["kazakh_doven"]; 
            
        //Chapter 3
            
            case 22 : return settings["exam3"];
            case 129 : return settings["thunder_quaker"];
            case 145 : return settings["millium"];
            case 138 : return settings["gideon"];
            case 109 : return settings["ginosha"];  
            
        //Chapter 4
        
            case 110 : return settings["Ol-Gadia1"];
            case 111 : return settings["Ol-Gadia2"];
            case 23 : return settings["exam4"];
            case 118 : return settings["giant_drome"];
            case 136 : return settings["rean"];
            case 119 : return settings["sharkodile"];
            case 148 : return settings["cursed_sculpture"];
            case 112 : return settings["zoro-agruga"];
            case 137 : return settings["my_name_is_C"];
            
        //Chapter 5
        
            case 122 : return settings["unsurtr"];
            case 24 : return settings["exam5_1"];
            case 25 : return settings["exam5"];
            case 144 : return settings["klaus"];
            case 123 : return settings["crocodark"];
            case 139 : return settings["victor"];
            case 140 : return settings["victor2"];
            case 124 : return settings["phalanx_j9"];
            case 116 : return settings["nosferatu"];
            case 152 : return settings["garrelia1"];
            case 142 : return settings["s_soldiers"];
            case 147 : return settings["scarlet"];    
            
        //Chapter 6
            
            case 135 : return settings["angie"];
            case 130 : return settings["evalvria"];    
            case 26 : return settings["exam6"];
            case 146 : return settings["gold_fungus"];
            case 125 : return settings["hydra"];
            case 154 : return settings["zephyrantes"];
            case 149 : return settings["V"];
            case 150 : return settings["C"];
            
        //Final Chapter
        
            case 117 : return settings["Loa"];
            case 153 : return settings["drakkhen"];
            case 141 : return settings["spiegel"];
            case 120 : return settings["spiegel_mech"];
            case 121 : return settings["ordine"];
           
      }
    }
    
    //Cutscene Splits
    
    if (current.cutsceneID != 0 && old.cutsceneID == 0){
    
        switch( (ushort)current.cutsceneID ) {
        
        //Final Chapter
        
            case 21305 : 
                if (current.currentPart == 8){
                    if (!vars.splitRealmCutscene && vars.realmCutsceneClearTimes == 4){
                        vars.splitRealmCutscene = true;
                        return true;
                    }
                }
                break;
        }
    }
    
    //Part Splits
        
    if (current.currentPart == old.currentPart + 1 || current.currentPart == 8 && old.currentPart == 6 ){ //the last check is to prevent splits upon loading saves from the main menu
    
        switch( (byte)current.currentPart){
            
            case 1 : return settings["prologue_end"];
            case 2 : return settings["chapter1_end"];
            case 3 : return settings["chapter2_end"];
            case 4 : return settings["chapter3_end"];
            case 5 : return settings["chapter4_end"];
            case 6 : return settings["chapter5_end"];
            case 8 : return settings["chapter6_end"];
        
        }
    }
    
    
}


isLoading {

        if (settings["remove_BGM_change"] && current.cutsceneFlag != 0 && current.bgmID == 65535 
            && current.cutsceneID != 25964 && (current.actEnd & 1) == 0 && current.resultCards == 0 && current.textOnScreen == 0 && current.roomID != 5392) {
            return true;
        }

        if (current.fadeToBlack != 3 && (current.fadeToBlack != 2 || current.cutsceneFlag != 0)) {
            return false;
        }

        //Party selection screens. Yes, it's as bad as it looks, no, I can't think of a better way because I can't find a good way to actually track the screens
        if (   current.cutsceneID == 25964 && !vars.doneWithSchoolhouseAssembly 
            || current.currentPart == 5 && current.cutsceneID == 21300 && !vars.doneWithMilliumAssembly && current.currentPartyLeader == 0
            || current.currentPart == 8 && current.cutsceneID == 21305 && current.cutsceneFlag == 0 && vars.realmCutsceneClearTimes == 4 && current.currentPartyLeader == 0
            || current.currentPart == 8 && current.cutsceneID == 21305 && current.cutsceneFlag == 0 && current.currentPartyLeader == 0 && current.roomID == 3392 && current.bgmID == 308
            || current.currentPart == 6 && current.cutsceneID == 21301 && current.currentPartyLeader == 0 
            || current.currentPart == 3 && current.cutsceneID == 21297 && current.currentPartyLeader == 0 
            || current.currentPart == 4 && current.cutsceneID == 21297 && current.currentPartyLeader == 0   ) {

            return false;
        }

        if (current.orbmentHeal == 116 || vars.inBattle || (current.actEnd & 1) != 0 || current.checkingQuests != 0) {
            return false;
        }

        // Text doesn't clear properly in this game unlike in cs2, so we have to make edge checks
        if (vars.setFastTravelValue || vars.setLingeringActEnd) {

            if (vars.setFastTravelValue && !vars.setLingeringActEnd) {
                if (current.textOnScreen != 0 && !vars.inFastTravel && current.battleFlag != 48)
                    return false;
            } 
            else if (!vars.setFastTravelValue) {
                if (current.textOnScreen != 0 && !vars.actEndIsLingering && current.battleFlag != 48)
                    return false;
            } 
            else {
                if (current.textOnScreen != 0 && !vars.actEndIsLingering && !vars.inFastTravel && current.battleFlag != 48)
                    return false;
            }
        } else if (current.textOnScreen != 0 && current.battleFlag != 48)
            return false;

        if (current.resultCards != 0)
            return false;

        if (current.currentPart > 5) //The last tutorial card is the Burst attack one in Garrelia, Chapter 5
            return true;

        if (current.tutorialCard1 != 0 || current.tutorialCard2 != 0 || current.tutorialCard3 != 0 || current.tutorialCard4 != 0)
            return (current.tutorialCardSafety & 1 << 3) == 0;

        return true;

    }