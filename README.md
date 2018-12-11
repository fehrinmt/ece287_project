# ece287_project
a state-machine-based implementation of a multiplayer battle simulator on an Altera FPGA using VGA video output

**DESCRIPTION**

The project proposal denoted a two-player game based roughly on fencing.  Our solution used an Altera FPGA to run a program of state machines displayed via VGA output on a computer monitor to implement a resetable two-player fencing game with sprites for each state.

**BACKGROUND**

We had originally wanted to use a set of USB joysticks to controll each of the characters, but with only one USB port on the Altera board, we decided to stick with the onboard inputs.  To keep things easy to work with and add functionality to, we decided to use the four push-buttons, two for each character, and a switch to act as a reset.

To develop the code for the VGA output, we employed a VHDL VGA Controller by Scott Larson hosted on digikey.com and video timings from a Time to Explore FPGA Blog post, specifically the VGA 640 x 480 section.  (https://www.digikey.com/eewiki/pages/viewpage.action?pageId=15925278 and https://timetoexplore.net/blog/video-timings-vga-720p-1080p, respectively)  These two sources provided the foundation upon which our project was developed.  Taking what we could from the VGA Controller and with the timings implemented with the help of the Time to Explore post, we could successfully output images on the monitor and develop the rest of our project from there.

Our sprites were developed in VHDL by creating a box in which we designated certain pixels to be filled in yellow by using ASCII 1s and 0s as in the below example (figure 1).  While this works for the purposes of this game, we would recommend looking into using Verilog to read data from a file to create a sprite for anything more involved as our method turned out to be somewhat inefficient as well as limited in the amount of detail we were able to include.

Figure 1, an example implementation of a basic face\n
  PROCESS(disp_ena, row, column)\n
  BEGIN\n
    smiley (0) <= "00000000000000000000";\n
    smiley (1) <= "00000111111111100000";\n
    smiley (0) <= "00011100111100111000";\n
    smiley (0) <= "00011111111111111000";\n
    smiley (0) <= "00011100000000111000";\n
    smiley (0) <= "00000111111111100000";\n
    smiley (0) <= "00000000000000000000";\n
  END\n

**PROCESS**

Our design takes the form of two state machines portrayed as character sprites that can be found in the source material as text files.  The game is primarily reaction based, with the fastest player being the winner.  The game will, however, default to Player 1 (the player on the left) being the winner in the case of an exact tie.
The goal of the game is to strike your oponent in one of two positions: either standing or crouching.  If both players are either standing or crouching at the time of the attempted hit, the strike will be blocked and will not be counted; in order to defeat your oponent your rapier must be on a different visual level than theirs.


**RESULTS**

https://youtu.be/d8x0ggBhcAQ

**CONCLUSION**

A conclusion summarizing the project and what was presented in this document
