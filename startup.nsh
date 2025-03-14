echo -off

set ssval = guid
set bsval = guid
set csval = guid

:: AMIDEEFI mit zufälligen Werten aufrufen
AMIDEEFIx64.efi /IVN "AMI"
AMIDEEFIx64.efi /SM "System manufacturer"
AMIDEEFIx64.efi /SP "System product name"
AMIDEEFIx64.efi /SV "System version"
AMIDEEFIx64.efi /SS "$ssval"
AMIDEEFIx64.efi /SU AUTO
AMIDEEFIx64.efi /SK "To Be Filled By O.E.M"
AMIDEEFIx64.efi /SF "To Be Filled By O.E.M."
AMIDEEFIx64.efi /BM "ASRock"
AMIDEEFIx64.efi /BP "B560M-C"
AMIDEEFIx64.efi /BV " "
AMIDEEFIx64.efi /BS "$bsval"
AMIDEEFIx64.efi /BT "Default string"
AMIDEEFIx64.efi /BLC "Default string"
AMIDEEFIx64.efi /CM "Default string"
AMIDEEFIx64.efi /CV "Default string"
AMIDEEFIx64.efi /CS "$csval"
AMIDEEFIx64.efi /CA "Default string"
AMIDEEFIx64.efi /CSK "SKU"
AMIDEEFIx64.efi /PSN "To Be Filled By O.E.M."
AMIDEEFIx64.efi /PAT "To Be Filled By O.E.M."
AMIDEEFIx64.efi /PPN "To Be Filled By O.E.M."

exit