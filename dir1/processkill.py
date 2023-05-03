import os

while True:
    # Display running processes
    print("Running processes:")
    os.system("ps aux")

    # Ask for PID input
    pid = input("Enter PID to kill (or 'q' to quit): ")

    # Quit if user enters 'q'
    if pid == 'q':
        break

    # Kill process with specified PID
    try:
        pid = int(pid)
        os.kill(pid, 9)
        print(f"Process with PID {pid} has been killed.")
    except ValueError:
        print("Invalid PID entered.")
    except OSError:
        print(f"Process with PID {pid} could not be killed.")

print("Exiting program.")
