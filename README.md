# ece287_project
a state-machine-based implementation of a multiplayer battle simulator on an Altera FPGA using VGA video output

**DESCRIPTION**

The project proposal denoted a two-player game based roughly on fencing.  Our solution used an Altera FPGA to run a program of state machines displayed via VGA output on a computer monitor to implement a resetable two-player fencing game with sprites for each state.

**BACKGROUND & DEVELOPMENT**

We had originally wanted to use a set of USB joysticks to controll each of the characters, but with only one USB port on the Altera board, we decided to stick with the onboard inputs.  To keep things easy to work with and add functionality to, we decided to use the four push-buttons, two for each character, and a switch to act as a reset.

Our design takes the form of two state machines portrayed as character sprites that can be found in the source material as text files.  The game is primarily reaction based, with the fastest player being the winner.  The game will, however, default to Player 1 (the player on the left) being the winner in the case of an exact tie.

The goal of the game is to strike your oponent in one of two positions: either standing or crouching.  If both players are either standing or crouching at the time of the attempted hit, the strike will be blocked and will not be counted; in order to defeat your oponent your rapier must be on a different visual level than theirs.

To develop the code for the VGA output, we employed a VHDL VGA Controller by Scott Larson hosted on digikey.com and video timings from a Time to Explore FPGA Blog post, specifically the VGA 640 x 480 section.  (https://www.digikey.com/eewiki/pages/viewpage.action?pageId=15925278 and https://timetoexplore.net/blog/video-timings-vga-720p-1080p, respectively)  These two sources provided the foundation upon which our project was developed.  Taking what we could from the VGA Controller and with the timings implemented with the help of the Time to Explore post, we could successfully output images on the monitor and develop the rest of our project from there.

Our sprites were developed in VHDL by creating a box in which we designated certain pixels to be filled in yellow by using ASCII 1s and 0s as in the below example (figure 1).  While this works for the purposes of this game, we would recommend looking into using Verilog to read data from a file to create a sprite for anything more involved as our method turned out to be somewhat inefficient as well as limited in the amount of detail we were able to include.

Figure 1, an example implementation of a basic face

    PROCESS(disp_ena, row, column) 
    BEGIN
      smiley (0) <= "00000000000000000000";
      smiley (1) <= "00000111111111100000";
      smiley (0) <= "00011100111100111000";
      smiley (0) <= "00011111111111111000";
      smiley (0) <= "00011100000000111000";
      smiley (0) <= "00000111111111100000";
      smiley (0) <= "00000000000000000000";
    END

**RESULTS**

The end result can be seen in the video linked at the bottom of this section.  We successfully implemented a quick-reaction dueling game, but we feel somewhat limited due to operating through the Altera board.  While it was never the goal of the project, in working through the process, we found we would have liked to have been able to implement the project through specialized hardware that would have enabled dual controllers and a more efficient method for processing video output.

Nevertheless, we were able to work around the board's limitations, providing a two-player setup with the four buttons much like the two-button setup of the Nintendo N64 controllers.  Note that this will therefore not work on boards with one or more broken buttons for obvious reasons.

As mentioned above, our main hurdle was successfully implementing the video output through VGA, but this alowed us to plan out the logistics of our program for smoother live implementation in the meantime.  Anyone wishing to work further with this project would be advised to extend the functionality from within the portion dealing with what is displayed rather than adjusting how it is displayed.  Additionally, as mentioned above, the system does have a default winner in the case of a technical exact tie, therefore care is advised if adding any further functionality as it was the source of most of the issues we encountered during the implementation of the system itself.  The best way we found to avoid those issues was keeping the code for each player as separate as possible.

https://youtu.be/d8x0ggBhcAQ

**CONCLUSION**

In conclusion, our project was a success in implementing multiple independent and interactive state machines.  The game can be played, reset, and played again quickly and easily, and it was a great learning opportunity for us in putting together what we've learned in class as well as taking it to the next level with VGA output and basic sprites.  This report outlines the origins of the project, the resources and steps taken to complete it, and presents the results we found, along with a recommendation for a possible future improvement.  Also included with the results is a short video demonstration and explanation of the game.
