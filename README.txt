This repository is a simple starter kit for making 2D games with traditional playing cards using Godot. It contains a Card class that provides a basic playing card object and related functions, a mostly-empty "Game" script with functions for building and managing a deck of cards, and a basic scene representing a playing surface.

The approach for this project setup is heavily influenced by the method described in BornCG's Memory Game tutorial (https://youtu.be/A60dT7RJfO8) - The playing surface is a control node, the Card class is an extension of the TextureButton node, and the intent is that the layout of the cards can be managed with UI containers (e.g. HBoxContainer, GridContainer, etc).

Card images provided by Iron Star Media (see https://opengameart.org/content/playing-cards-0)