# SNMP Scripts Monitoring

This repository contains scripts for monitoring various aspects using SNMP (Simple Network Management Protocol). The scripts are designed to gather metrics related to CPU, RAM, disk usage, identify the top 10 resource-intensive services, and visualize usage over time using Python scripts with matplotlib.

## Contents

1. **script_SNMP**
   - This script focuses on retrieving SNMP metrics related to the usage of CPU, RAM, and disk.

2. **top10**
   - Scripts within this section are dedicated to identifying and listing the top 10 most resource-intensive services.

3. **Visualization Scripts**
   - This section contains Python scripts that leverage matplotlib for visualizing resource usage over time.

## Usage

### script_SNMP
1. Ensure that SNMP is configured on the target device.
2. Modify the script's configuration parameters (if required) such as SNMP community strings, IP addresses, and SNMP version.
3. Execute the script to retrieve and display CPU, RAM, and disk usage metrics.

### top10
1. Adjust the script's configuration parameters, including SNMP details and the number of services to display.
2. Run the script to identify and list the top 10 resource-intensive services.

### Visualization Scripts
1. Install the necessary Python dependencies using `pip install -r requirements.txt`.
2. Modify the configuration in the visualization scripts as needed.
3. Execute the scripts to generate visualizations of resource usage trends over time.

## Dependencies
- Python 3.x
- Matplotlib (for visualization scripts)
