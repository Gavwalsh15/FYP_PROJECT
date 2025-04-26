import csv
import time
import sha256

if __name__ == "__main__":
    messages = [
        "A" * 1024 * 1, "B" * 1024 * 2, "C" * 1024 * 3,
        "D" * 1024 * 4, "E" * 1024 * 5, "F" * 1024 * 6,
        "G" * 1024 * 7, "H" * 1024 * 8, "I" * 1024 * 9,
        "J" * 1024 * 10, "K" * 1024 * 11, "L" * 1024 * 12,
        "M" * 1024 * 13, "N" * 1024 * 14, "O" * 1024 * 15,
        "P" * 1024 * 16, "Q" * 1024 * 17,
        "R" * 1024 * 18, "S" * 1024 * 19, "T" * 1024 * 20,
        "U" * 1024 * 21, "V" * 1024 * 22,
        "W" * 1024 * 23, "X" * 1024 * 24, "Y" * 1024 * 25,
        "Z" * 1024 * 26,
        "A1" * 1024 * 27, "B1" * 1024 * 28, "C1" * 1024 * 29,
        "D1" * 1024 * 30, "E1" * 1024 * 30, "F1" * 1024 * 40,
        "G1" * 1024 * 41, "H1" * 1024 * 42, "I1" * 1024 * 43,
        "J1" * 1024 * 44, "K1" * 1024 * 45, "L1" * 1024 * 48,
        "M1" * 1024 * 49, "N1" * 1024 * 50, "O1" * 1024 * 51,
        "P1" * 1024 * 52, "Q1" * 1024 * 53, "R1" * 1024 * 54,
        "S1" * 1024 * 55, "T1" * 1024 * 56, "U1" * 1024 * 57,
        "V1" * 1024 * 58, "W1" * 1024 * 59, "X1" * 1024 * 60,
        "Y1" * 1024 * 61, "Z1" * 1024 * 62,
        "A22" * 1024 * 63, "B22" * 1024 * 64, "C22" * 1024 * 65,
        "D22" * 1024 * 64, "E22" * 1024 * 66, "F22" * 1024 * 67,
        "G22" * 1024 * 68, "H22" * 1024 * 69, "I22" * 1024 * 70,
        "J22" * 1024 * 71, "K22" * 1024 * 72, "L22" * 1024 * 80,
        "M22" * 1024 * 73, "N22" * 1024 * 81, "O22" * 1024 * 82,
        "P22" * 1024 * 83, "Q22" * 1024 * 84, "R22" * 1024 * 85,
        "U22" * 1024 * 86, "V22" * 1024 * 87, "W22" * 1024 * 88,
        "X22" * 1024 * 89, "Y22" * 1024 * 90, "Z22" * 1024 * 91,
    ]

    # Create or open CSV file
    csv_filename = 'computer_stats.csv'
    csv_header = ['Size (bytes)', 'Transfer Time (s)']

    with open(csv_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(csv_header)

        for message in messages:
            start = time.time()
            sha256.sha256(message)
            finish = time.time()
            total_time = finish - start

            # Write stats to CSV
            writer.writerow([len(message), f"{total_time:.4f}"])
            print(f"{total_time:.4f}")

    print(f"Statistics have been saved to {csv_filename}")
