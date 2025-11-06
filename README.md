# Airsoft Loader

A simple fake loader program designed to display a convincing loading animation in the Windows terminal. Perfect for running from a USB stick for demonstrations or pranks.

## Features

- 🎯 Realistic loading animation with progress bars
- 📊 Multiple loading stages with random durations
- 💻 Cross-platform (Windows, macOS, Linux)
- 🔌 USB stick compatible - no installation required
- 🎨 Clean terminal-based interface
- ⚡ Lightweight and fast

## Requirements

- Python 3.6 or higher (usually pre-installed on most systems)

## Usage

### On Windows

1. **Double-click** `run.bat` to start the loader
   - The batch file will automatically find Python and run the loader
   - If Python is not found, you'll get instructions to install it

### On macOS/Linux

1. Open a terminal in the directory
2. Make the script executable (first time only):
   ```bash
   chmod +x loader.py
   ```
3. Run the loader:
   ```bash
   ./loader.py
   ```
   or
   ```bash
   python3 loader.py
   ```

### Running from USB Stick

1. Copy the entire folder to your USB stick
2. On Windows: Double-click `run.bat`
3. On macOS/Linux: Open terminal, navigate to the folder, and run `python3 loader.py`

## What It Does

The loader simulates a system initialization process with:
- Multiple loading stages (10 stages total)
- Progress bars for each stage
- Random timing for realistic effect
- Clean, professional-looking output

## Customization

You can edit `loader.py` to customize:
- Loading messages (in the `stages` list)
- Progress bar appearance
- Timing and duration
- Colors and styling

## Requirements for Python

If Python is not installed on the target system:
- **Windows**: Download from [python.org](https://www.python.org/downloads/)
- **macOS**: Usually pre-installed, or install via Homebrew: `brew install python3`
- **Linux**: Usually pre-installed, or install via package manager: `apt install python3`

## License

This is a simple demonstration program. Use responsibly.

## Safety Note

This is purely a visual loader - it doesn't modify, access, or transmit any data. It's completely safe to use.