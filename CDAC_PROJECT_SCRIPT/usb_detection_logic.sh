#!/bin/bash

#NOTE: Run this script from another script name "usb_detection_fire.sh" so as to see the output of the script in a net terminal.
#"usb_detection_fire.sh" is in the same directory

# Function to check for a specific USB HID device
function check_usb_device() {
  vendor_id="483"    #CHANGE FOR DIFFERENT USB
  product_id="572b"  #CHANGE FOR DIFFERENT USB
  # Use lsusb -v for more detailed information
  device_info=$(lsusb -d $vendor_id:$product_id) #by running lsusb command checking if the USB is connected or not.
  # echo "$device_info"
  if [[ -z "$device_info" ]]; then
    if [[ "$flag" ]]; then
      echo "Device is disconnected"
      killed=$(kill -9 $flag) #Killing the PID
      #checking if the PID is killed or not.
      if [[ -z "$killed" ]]; then
        echo "Killed $flag"
      else
        echo "$flag is still running"
      fi
    fi
  else
    if [[ -z "$flag" ]]; then
        echo "Device is connected"
        ./entry >/dev/null 2>&1 & #running the program in current directory & output it in a null buffer.
    fi
  fi
} #function check usb device ends

# Main script logic
previous_output=""
flag=""
while true; do
  flag=$(pidof entry)
  if [[ $flag ]]; then
    echo "PID: $flag"
  else
    echo "No PID found"
  fi
  current_output=$(check_usb_device)
  if [[ "$current_output" != "$previous_output" ]]; then
    echo "$current_output"
    previous_output="$current_output"
  fi
  sleep 1  # Adjust the sleep interval as needed
done
