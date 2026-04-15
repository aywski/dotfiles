# dotfiles

Arch Linux, Lenovo Legion 5 15AKP10 (83F1).

## Audio fixes

### PipeWire instead of PulseAudio

Remove PulseAudio and replace with PipeWire equivalents:

```bash
sudo pacman -Rs pulseaudio pulseaudio-bluetooth
sudo pacman -S pipewire-pulse pipewire-bluetooth
systemctl --user enable --now pipewire-pulse
```

### Built-in digital microphone (DMIC)

The legacy ACP PCI driver (`snd_acp_pci`) initializes the DMIC incorrectly - all
PCM samples come out as -32768 (stuck). The fix is to blacklist it so the SOF
driver (`snd_sof_amd_acp70`) takes over:

```bash
echo "blacklist snd_acp_pci" | sudo tee /etc/modprobe.d/acp-legacy.conf
sudo mkinitcpio -P
```

Reboot. After that `Mic1` (Digital Microphone) works correctly via PipeWire.
