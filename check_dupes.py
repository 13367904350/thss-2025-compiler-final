
import sys
import re

def check_duplicates(filepath):
    defined_names = set()
    errors = 0
    with open(filepath, 'r') as f:
        for line_num, line in enumerate(f, 1):
            line = line.strip()
            # Look for assignments: %name = ...
            match = re.match(r'^\s*(%[\w\.\-]+)\s*=', line)
            if match:
                name = match.group(1)
                if name in defined_names:
                    print(f"Error: Duplicate definition of {name} at line {line_num}")
                    errors += 1
                defined_names.add(name)
            
            # Also checking for label definitions: name:
            label_match = re.match(r'^\s*([a-zA-Z0-9_\.]+):', line)
            if label_match:
                name = "%" + label_match.group(1) # Labels in LLVM IR used as %name
                if name in defined_names:
                   # LLVM labels are local values too
                   print(f"Error: Duplicate definition of label {name} at line {line_num}")
                   errors += 1
                defined_names.add(name)

    if errors == 0:
        print("No duplicates found.")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python check_dupes.py <ll-file>")
        sys.exit(1)
    check_duplicates(sys.argv[1])
