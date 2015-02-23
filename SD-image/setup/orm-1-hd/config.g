; RepRapPro Ltd
;
; Configuration file for: RepRap Ormerod 2 with 1 head
;
; If you are updating a config.g that you already have you
; may wish to go through it and this file checking what you
; want to keep from your old file.
; 
M111 S0                             ; Debug off
M550 PRepRapPro                     ; Machine name (can be anything you like)
M551 Preprap                        ; Machine password (currently not used)
M540 PBE:EF:DE:AD:FE:ED 				; MAC Address
M552 P192.168.1.14                  ; IP address
M553 P255.255.255.0                 ; Netmask
M554 P192.168.1.1                   ; Gateway
M555 P2                             ; Set USB output to look like Marlin
G21                                 ; Work in millimetres
G90                                 ; Send absolute corrdinates...
M83                                 ; ...but relative extruder moves
M906 X900 Y900 Z900 E900				; Set motor currents (mA)
M569 P0 S0									; Reverse the X motor
M92 E420                            ; Set extruder steps per mm
M558 P2                             ; Use a modulated Z probe
G31 Z0.9 P397                       ; Set the probe height and threshold
M556 S78 X0 Y0 Z0                   ; Put your axis compensation here
M201 X500 Y500 Z15 E500             ; Accelerations (mm/s^2)           
M203 X15000 Y15000 Z300 E3600       ; Maximum speeds (mm/min)      
M566 X300 Y300 Z30 E20              ; Minimum speeds mm/minute
M563 P127 H1 D0:1:2:3:4             ; Tool 127 allows the web interface to control all drives and heaters 
M563 P0 D0 H1                       ; Define tool 0
G10 P0 S-273 R-273                  ; Set tool 0 operating and standby temperatures


