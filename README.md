# BondChecker

Pakistan National Prize Bond Checker - A dotnet console app

## Overview

This simple C# console application helps users find out if they have won in the Pakistan National Prize Bond draw. The application matches numbers from a user-provided file against the official list of winning numbers. If any of the user's numbers are winners, the program will display these numbers.

## How It Works

The program reads two sets of numbers:

1. **Source File:** This contains the official list of winning numbers from the Pakistan National Prize Bond draws.
2. **Target File:** This should contain the bond numbers you own and want to check for wins.

The application checks each number in your list against the official list of winners. Any matching numbers are then displayed as output, indicating that these are winning numbers.

## Usage

To use this application, follow these steps:

1. Prepare your list of bond numbers that you want to check. Ensure that each number is on a new line in the text file.
2. Save this file as `targetFile.txt` at the following path on your computer: `C:\path\to\your\targetFile.txt`.
3. Run the application. If any of your numbers match the winning numbers, they will be displayed in the console window.

## File Paths

- **Source File Path:** `C:\path\to\your\sourceFile.txt` - This path should contain the official list of winning numbers. You should update this file whenever new draw results are published.
- **Target File Path:** `C:\path\to\your\targetFile.txt` - This path should contain your personal bond numbers you want to check.

## System Requirements

- .NET Core 3.1 or higher installed on your machine.
- Windows operating system.

## Note

Ensure that the paths to your files are correctly set in the application before running it. Modify the paths in the code if necessary to match where your files are stored on your system.



----------------------------------------
TODO: Notes need to document

Webiste of statebank: https://www.sbp.org.pk/sbp_bsc/Prizebond.asp

your list should be in my-list folder.
and file naming convention should be list-750.txt or list-1500.txt

the govenrment list is in folder draw-list