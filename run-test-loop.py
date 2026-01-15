import os
import subprocess
import sys
from pathlib import Path

# Import logic from run-test.py if possible, or replicate it lightly.
# Since run-test.py is not a module structure, I will invoke it as correct way to reuse environment.
# Or better, just replicate the logic to be standalone as requested.

def main():
    print("Running For-Loop Tests (10 Cases)...")
    # We invoke run-test.py with specific pattern "300_loop_"
    # This assumes run-test.py takes an argument to filter.
    # Our modified run-test.py DOES take an argument.
    
    cmd = [sys.executable, "run-test.py", "300_loop_"]
    # We must use wsl if on windows? The user environment seems to check wsl.
    # But run-test.py itself calls subprocess. usually we run run-test.py IN wsl.
    # The user is running python scripts in wsl usually.
    
    # If this script is run via `wsl python3 run-test-loop.py`, sys.executable is python3 in linux.
    # It should call `python3 run-test.py 300_loop_`.
    
    subprocess.run([sys.executable, "run-test.py", "300_loop_"])

if __name__ == "__main__":
    main()
