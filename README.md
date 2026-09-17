# SCARA 2D Robotic Arm — Simulink Model

This repository contains a MATLAB/Simulink model of a 2-link SCARA robotic arm that I designed, built, and modeled from scratch. The `.slx` file includes the full Simscape Multibody model of the arm along with forward kinematics (FK), inverse kinematics (IK), and a PID controller for closed-loop trajectory tracking.

## Requirements

- MATLAB with Simulink and Simscape Multibody installed

## Getting Started

1. Download all files into a single folder — the model references other files in the same directory, so everything needs to stay together.
2. Open `Custom2ArmRobotFWDKinematicsPID_Controlled.slx` in Simulink.
3. Click **Run**. If everything is set up correctly, Simscape Multibody Explorer will open automatically.
4. If you hit an error inside the second arm's block in the Simscape model, check the error comments first — they usually point to the issue. A common fix is to suppress the spline inside the second arm block of the Simscape model.
5. Once the model runs successfully, run `PlottingOutputPath.m` to plot the commanded trajectory against the actual arm output.
6. Tune the PID gains as needed and re-run to see how the response changes.

Good luck, and feel free to reach out if you run into issues!
