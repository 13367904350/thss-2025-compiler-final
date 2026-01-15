import os
import subprocess
import sys

def main():
    print("Running Struct Tests (10 Cases)...")
    subprocess.run([sys.executable, "run-test.py", "301_struct_"])

if __name__ == "__main__":
    main()
