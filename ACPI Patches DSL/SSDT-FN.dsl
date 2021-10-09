DefinitionBlock("", "SSDT", 2, "hack", "FN", 0)
{   
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)
    External(_SB.PCI0.LPCB.EC0.XQEC, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ0E, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ0F, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ11, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ12, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ13, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ14, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ15, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ6C, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ6D, MethodObj)
    External(_SB.PCI0.LPCB.EC0.XQ6F, MethodObj)
    
    Scope(_SB.PCI0.LPCB.EC0)
    {        
        Method (_QEC, 0, NotSerialized)  // Left Assignable Button (Nothing in AppleKeyboard)
        {
            // Sleep
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x045f)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQEC()
            }
        }
        
        Method (_Q0E, 0, NotSerialized)  // Fn + F5 brigthness down
        {
            // Brigthness Down
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ0E()
            }
        }
        
        Method (_Q0F, 0, NotSerialized)  // Fn + F6 brigthness up
        {
            // Brigthness Up
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ0F()
            }
        }
        
        Method (_Q11, 0, NotSerialized)  // Fn + F8 vid mirror
        {
            // Vid Mirror
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x046e)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ11()
            }
        }
        
        Method (_Q12, 0, NotSerialized)  // Fn + F9 trackpad on off
        {
            // In VoodooPS2 Pint Screen key is used to disable trackpad
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0469)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ12()
            }
        }
        
        Method (_Q13, 0, NotSerialized)  // Fn + F10 mute
        {
            // Mute
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0420)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ13()
            }
        }
        
        Method (_Q14, 0, NotSerialized)  // Fn + F11 volume down
        {
            // Volume Down
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x042e)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ14()
            }
        }
        
        Method (_Q15, 0, NotSerialized)  // Fn + F12 volume up
        {
            // Volume Up
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0430)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ15()
            }
        }
        
        Method (_Q6C, 0, NotSerialized)  // Fn + Arrow Left Media Previous
        {
            // Media Previous
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0410)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ6C()
            }
        }
        
        Method (_Q6D, 0, NotSerialized)  // Fn + Arrow Right Media Next
        {
            // Media Next
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0419)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ6D()
            }
        }
        
        Method (_Q6F, 0, NotSerialized)  // Fn + Arrow Down Media Play/Pause
        {
            // Media Play/Puse
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPCB.PS2K, 0x0422)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ6F()
            }
        }
    }
}