#!/bin/bash

OVERLAY_DIR="/boot/overlays"

DTC_CMD=$(command -v dtc)
if [ $? -ne 0 ]; then
  echo "Please install device tree compiler (dtc)" >&2
  echo "sudo apt install device-tree-compiler" >&2
  exit 1
fi

if [ ! -w "$OVERLAY_DIR" ]; then
  echo "Do not have permission to write to $OVERLAY_DIR" >&2
  echo "Try running with sudo" >&2
  exit 1
fi

for DTS in *-overlay.dts; do
  DTBO=$(echo "$DTS" | sed 's/-overlay.dts/.dtbo/')
  echo "Installing $DTS into $OVERLAY_DIR/$DTBO"
  "$DTC_CMD" -I dts -O dtb -o "$OVERLAY_DIR/$DTBO" "$DTS"
done

echo "Done"

