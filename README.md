# ece287_project
a state-machine-based implementation of a multiplayer battle simulator on an Altera FPGA using VGA video output

**DESCRIPTION**
The project proposal denoted a two-player game based roughly on fencing.  Our solution used an Altera FPGA to run a program of state machines displayed via VGA output on a computer monitor to implement a resetable two-player fencing game with sprites for each state.

**PROCESS**
https://youtu.be/d8x0ggBhcAQ

Our design takes the form of two state machines portrayed as character sprites that can be found in the source material as text files.  The game is primarily reaction based, with the fastest player being the winner.  The game will, however, default to Player 1 (the player on the left) being the winner in the case of an exact tie.
The goal of the game is to strike your oponent in one of two positions: either standing or crouching.  If both players are either standing or crouching at the time of the attempted hit, the strike will be blocked and will not be counted; in order to defeat your oponent your rapier must be on a different visual level than theirs.

**RESULTS**

**CONCLUSION**

A description of your design in a form that people who aren’t familiar with the work can understand how the design was achieved. Imagine one of your classmates was to use your project and extend it. What would they need to know about how you built your project
A conclusion summarizing the project and what was presented in this document
Citations for which design elements are borrowed from others in and out of the class. Includes links to these users and highlighted code.
