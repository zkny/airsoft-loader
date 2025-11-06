#!/usr/bin/env python3
"""
Airsoft Loader - A simple fake loader program
Can be run from a USB stick to display a convincing loading animation
"""

import time
import random
import sys


def clear_line():
    """Clear the current line in the terminal"""
    sys.stdout.write('\r')
    sys.stdout.write(' ' * 80)
    sys.stdout.write('\r')
    sys.stdout.flush()


def print_progress_bar(iteration, total, prefix='', suffix='', length=50, fill='█'):
    """
    Print a progress bar to the terminal
    
    Args:
        iteration: Current iteration
        total: Total iterations
        prefix: Prefix string
        suffix: Suffix string
        length: Character length of bar
        fill: Bar fill character
    """
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = fill * filled_length + '-' * (length - filled_length)
    sys.stdout.write(f'\r{prefix} |{bar}| {percent}% {suffix}')
    sys.stdout.flush()


def animate_dots(message, duration=1.0):
    """Animate dots after a message"""
    for i in range(3):
        clear_line()
        sys.stdout.write(f'{message}' + '.' * (i + 1))
        sys.stdout.flush()
        time.sleep(duration / 3)


def run_loader():
    """Main loader function with fake loading stages"""
    
    # Loading messages to display
    stages = [
        ("Initializing system", 0.3, 0.6),
        ("Loading core modules", 0.5, 1.2),
        ("Checking dependencies", 0.4, 0.9),
        ("Verifying integrity", 0.6, 1.0),
        ("Establishing connection", 0.5, 1.1),
        ("Loading configuration", 0.4, 0.8),
        ("Preparing environment", 0.5, 0.9),
        ("Synchronizing data", 0.6, 1.3),
        ("Optimizing performance", 0.4, 0.7),
        ("Finalizing setup", 0.5, 1.0),
    ]
    
    print("\n" + "="*60)
    print(" "*18 + "AIRSOFT LOADER v2.1")
    print("="*60 + "\n")
    
    time.sleep(0.5)
    
    # Run through all stages
    for stage_num, (message, min_time, max_time) in enumerate(stages, 1):
        print(f"\n[{stage_num}/{len(stages)}] {message}...", end='')
        sys.stdout.flush()
        
        # Random duration for realism
        duration = random.uniform(min_time, max_time)
        steps = 50
        step_duration = duration / steps
        
        print()  # New line for progress bar
        
        # Progress bar animation
        for i in range(steps + 1):
            print_progress_bar(i, steps, prefix='Progress:', suffix='Complete')
            time.sleep(step_duration)
        
        print()  # New line after progress bar
        time.sleep(0.2)
    
    # Final completion message
    print("\n" + "="*60)
    print(" "*15 + "✓ All systems loaded successfully!")
    print("="*60 + "\n")
    time.sleep(1)
    
    # Countdown before exit
    print("Press Ctrl+C to exit or wait for auto-close...\n")
    for i in range(5, 0, -1):
        clear_line()
        sys.stdout.write(f"Closing in {i} seconds...")
        sys.stdout.flush()
        time.sleep(1)
    
    clear_line()
    print("Goodbye!\n")


def main():
    """Entry point for the loader"""
    try:
        run_loader()
    except KeyboardInterrupt:
        print("\n\nLoader interrupted by user.")
        print("Goodbye!\n")
        sys.exit(0)
    except Exception as e:
        print(f"\n\nError occurred: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()
