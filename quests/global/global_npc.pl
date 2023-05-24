sub EVENT_SPAWN {
    if ($npc->GetOwnerID() > 0 && $entity_list->GetMobByID($npc->GetOwnerID())->IsClient()) {
        quest::settimer("Rename", 5);
    }
}

sub EVENT_TIMER {
    if ($timer eq "Rename") {
        quest::stoptimer("Rename");
        $entity_list->GetClientByID($npc->GetOwnerID())->SignalClient(2);
    }
}