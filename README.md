# SilentFB
Hide facebook &amp; facebook messenger online status and last seen.
And no more playing videos automatically!

For iOS !

<b>How to use (Precompiled - Sideload)</b>

<ul>
<li>Download facebook or messenger app (.ipa)</li>
<li>Extract your ipa (change your .ipa extension to .zip and extract it, you will see a payload folder)</li>
<li>Load the dylib into the app (payload/Facebook) with optool example: (optool install -c load -p @executable_path/Silent.dylib -t Payload/Facebook.app/Facebook) (https://github.com/alexzielenski/optool)</li>
<li>Copy your dylib inside payload/Facebook/ (right click then show package content in the Facebook app)</li>
<li>Compress your Payload folder and change the extension to .ipa</li>
<li>Use cydia impactor to sign and transfer the ipa to your device.</li>

</ul>

<b>How to use (Precompiled - MobileSubstrate)</b>

Just install the .deb with iFile(download it from cydia)
