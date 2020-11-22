
################################################################
# This is a generated script based on design: Lab7
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Lab7_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name Lab7

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set LD0 [ create_bd_port -dir O LD0 ]
  set LD1 [ create_bd_port -dir O LD1 ]
  set LD2 [ create_bd_port -dir O LD2 ]
  set LD3 [ create_bd_port -dir O LD3 ]
  set LD4 [ create_bd_port -dir O LD4 ]
  set LD5 [ create_bd_port -dir O LD5 ]
  set LD6 [ create_bd_port -dir O LD6 ]
  set LD7 [ create_bd_port -dir O LD7 ]
  set SW0 [ create_bd_port -dir I SW0 ]
  set SW1 [ create_bd_port -dir I SW1 ]
  set SW2 [ create_bd_port -dir I SW2 ]
  set SW3 [ create_bd_port -dir I SW3 ]
  set SW4 [ create_bd_port -dir I SW4 ]
  set SW5 [ create_bd_port -dir I SW5 ]
  set SW6 [ create_bd_port -dir I SW6 ]
  set SW7 [ create_bd_port -dir I SW7 ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and2_1, and set properties
  set xup_and2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and2:1.0 xup_and2_1 ]

  # Create instance: xup_inv_0, and set properties
  set xup_inv_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 xup_inv_0 ]

  # Create instance: xup_inv_1, and set properties
  set xup_inv_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_inv:1.0 xup_inv_1 ]

  # Create instance: xup_or2_0, and set properties
  set xup_or2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or2:1.0 xup_or2_0 ]

  # Create port connections
  connect_bd_net -net SW0_1 [get_bd_ports SW0] [get_bd_pins xup_inv_0/a]
  connect_bd_net -net SW1_1 [get_bd_ports SW1] [get_bd_pins xup_and2_0/a]
  connect_bd_net -net SW2_1 [get_bd_ports SW2] [get_bd_pins xup_and2_1/a] [get_bd_pins xup_inv_1/a]
  connect_bd_net -net SW3_1 [get_bd_ports SW3] [get_bd_pins xup_and2_1/b]
  connect_bd_net -net SW4_1 [get_bd_ports LD4] [get_bd_ports SW4]
  connect_bd_net -net SW5_1 [get_bd_ports LD5] [get_bd_ports SW5]
  connect_bd_net -net SW6_1 [get_bd_ports LD6] [get_bd_ports SW6]
  connect_bd_net -net SW7_1 [get_bd_ports LD7] [get_bd_ports SW7]
  connect_bd_net -net xup_and2_0_y [get_bd_ports LD1] [get_bd_pins xup_and2_0/y] [get_bd_pins xup_or2_0/a]
  connect_bd_net -net xup_and2_1_y [get_bd_ports LD3] [get_bd_pins xup_and2_1/y] [get_bd_pins xup_or2_0/b]
  connect_bd_net -net xup_inv_0_y [get_bd_ports LD0] [get_bd_pins xup_inv_0/y]
  connect_bd_net -net xup_inv_1_y [get_bd_pins xup_and2_0/b] [get_bd_pins xup_inv_1/y]
  connect_bd_net -net xup_or2_0_y [get_bd_ports LD2] [get_bd_pins xup_or2_0/y]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port SW3 -pg 1 -y -70 -defaultsOSRD
preplace port SW4 -pg 1 -y 40 -defaultsOSRD
preplace port SW5 -pg 1 -y 90 -defaultsOSRD
preplace port SW6 -pg 1 -y 120 -defaultsOSRD
preplace port LD0 -pg 1 -y -380 -defaultsOSRD
preplace port SW7 -pg 1 -y 160 -defaultsOSRD
preplace port LD1 -pg 1 -y -260 -defaultsOSRD
preplace port LD2 -pg 1 -y -170 -defaultsOSRD
preplace port LD3 -pg 1 -y -90 -defaultsOSRD
preplace port LD4 -pg 1 -y 40 -defaultsOSRD
preplace port LD5 -pg 1 -y 90 -defaultsOSRD
preplace port LD6 -pg 1 -y 120 -defaultsOSRD
preplace port LD7 -pg 1 -y 160 -defaultsOSRD
preplace port SW0 -pg 1 -y -380 -defaultsOSRD
preplace port SW1 -pg 1 -y -290 -defaultsOSRD
preplace port SW2 -pg 1 -y -100 -defaultsOSRD
preplace inst xup_inv_0 -pg 1 -lvl 2 -y -380 -defaultsOSRD
preplace inst xup_inv_1 -pg 1 -lvl 1 -y -220 -defaultsOSRD -resize 80 60
preplace inst xup_or2_0 -pg 1 -lvl 3 -y -170 -defaultsOSRD
preplace inst xup_and2_0 -pg 1 -lvl 2 -y -270 -defaultsOSRD
preplace inst xup_and2_1 -pg 1 -lvl 2 -y -90 -defaultsOSRD -resize 80 80
preplace netloc SW4_1 1 0 4 N 40 NJ 40 NJ 40 NJ
preplace netloc SW2_1 1 0 2 0 -100 NJ
preplace netloc SW1_1 1 0 2 NJ -290 310
preplace netloc SW7_1 1 0 4 N 160 NJ 160 NJ 160 NJ
preplace netloc SW6_1 1 0 4 N 120 NJ 120 NJ 120 NJ
preplace netloc xup_or2_0_y 1 3 1 N
preplace netloc xup_inv_0_y 1 2 2 NJ -380 N
preplace netloc SW0_1 1 0 2 N -380 N
preplace netloc SW3_1 1 0 2 NJ -80 N
preplace netloc xup_and2_0_y 1 2 2 480 -260 NJ
preplace netloc xup_inv_1_y 1 1 1 310
preplace netloc SW5_1 1 0 4 N 90 NJ 90 NJ 90 NJ
preplace netloc xup_and2_1_y 1 2 2 480 -90 N
levelinfo -pg 1 -20 230 400 560 650 -top -570 -bot 240
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


