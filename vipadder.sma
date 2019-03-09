#include <amxmodx>
#include <hamsandwich>

public plugin_init()
{
    register_plugin("[CS 1.6] Free VIP Adder", "1.0.0", "Javierko")

    RegisterHam(Ham_Spawn, "player", "Ham_PlayerSpawn", 1)
}

public Ham_PlayerSpawn(iID)
{
    if(!(get_user_flags(iID) & 4096))
    {
        remove_user_flags(iID, 4096);
        set_user_flags(iID, 4096);
        
        set_hudmessage(255, 255, 255, -1.0, 0.87, 0, 0.0, 12.0, 0.1, 0.2, -1);
        show_hudmessage(iID, "You got a Free VIP!")
    }
}  