;; When homing X and Y it's important to move the nozzle up slightly
;; to avoid the build plate and mechanical switch,
;; so the nozzle will not collide on X/Y homing moves.
;; Do this with reduced current to reduce crash damage
;; in case we're already at the top of the Z axis.

M98 P"drive_z_downcurrent.g"
G91                             ; relative positioning
G0 Z10 F1800 S2                 ; unhomed move up
M98 P"drive_z_fullcurrent.g"
