import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
from scipy import stats

# Read the CSV files
df_uart = pd.read_csv('uart_stats.csv')
df_computer = pd.read_csv('computer_stats.csv')
df_MB = pd.read_csv('MB_stats.csv')

SHOW_MB_STATS = False

# Create the scatter plot
plt.figure(figsize=(10, 6))

# Plot UART data
plt.scatter(df_uart['Size (bytes)'], df_uart['Transfer Time (s)'], color='blue', alpha=0.5, label='FPGA Data')
slope_uart, intercept_uart, r_value_uart, p_value_uart, std_err_uart = stats.linregress(df_uart['Size (bytes)'], df_uart['Transfer Time (s)'])
line_uart = slope_uart * df_uart['Size (bytes)'] + intercept_uart
plt.plot(df_uart['Size (bytes)'], line_uart, color='red', label='FPGA (5M Baud)')

print("UART Statistical Analysis:")
print(f"Slope: {slope_uart:.6f}")
print(f"Y Intercept: {intercept_uart:.6f}")
print(f"Standard Error: {std_err_uart:.6f}")

# Plot Computer data
plt.scatter(df_computer['Size (bytes)'], df_computer['Transfer Time (s)'], color='green', alpha=0.5, label='PC Data')
slope_comp, intercept_comp, r_value_comp, p_value_comp, std_err_comp = stats.linregress(df_computer['Size (bytes)'], df_computer['Transfer Time (s)'])
line_comp = slope_comp * df_computer['Size (bytes)'] + intercept_comp
plt.plot(df_computer['Size (bytes)'], line_comp, color='orange', label='PC (Home PC 12 Core 4.5 GHZ )')

print("\nComputer Statistical Analysis:")
print(f"Slope: {slope_comp:.6f}")
print(f"Y Intercept: {intercept_comp:.6f}")
print(f"Standard Error: {std_err_comp:.6f}")


if SHOW_MB_STATS:
    # Plot MB data
    plt.scatter(df_MB['Size (bytes)'], df_MB['Transfer Time (s)'], color='purple', alpha=0.5, label='MB Data')
    slope_MB, intercept_MB, r_value_MB, p_value_MB, std_err_MB = stats.linregress(df_MB['Size (bytes)'], df_MB['Transfer Time (s)'])
    line_MB = slope_MB * df_MB['Size (bytes)'] + intercept_MB
    plt.plot(df_MB['Size (bytes)'], line_MB, color='magenta', label='MB (MicroBlaze)')

    print("\nMB Statistical Analysis:")
    print(f"Slope: {slope_MB:.6f}")
    print(f"Y Intercept: {intercept_MB:.6f}")
    print(f"Standard Error: {std_err_MB:.6f}")

# Add labels and title
plt.xlabel('Size (bytes)')
plt.ylabel('Transfer Time (seconds)')
plt.title('Hashing Time: Size vs Time (FPGA vs PC vs MB)')
plt.legend()

# Add grid
plt.grid(True, linestyle='--', alpha=0.7)

# Show the plot
plt.tight_layout()
plt.show()


