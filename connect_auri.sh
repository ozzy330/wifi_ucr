EDU="eduroam"
AURI="AURI3-UCR"

read -p "Escriba su usuario (omitiendo @ucr.acr.cr): " USER
read -s -p "Escriba su contraseña: " PASSWORD

nmcli c add type wifi con-name $EDU \
      802-11-wireless.ssid $EDU \
      802-11-wireless-security.key-mgmt wpa-eap \
      802-1x.anonymous-identity anonymous@ucr.ac.cr \
      802-1x.domain-suffix-match radius.ucr.ac.cr \
      802-1x.eap ttls \
      802-1x.identity $USER \
      802-1x.password $PASSWORD \
      802-1x.phase2-auth pap \

nmcli c add type wifi con-name $AURI \
      802-11-wireless.ssid $AURI \
      802-11-wireless-security.key-mgmt wpa-eap \
      802-1x.anonymous-identity anonymous@ucr.ac.cr \
      802-1x.domain-suffix-match radius.ucr.ac.cr \
      802-1x.eap ttls \
      802-1x.identity $USER \
      802-1x.password $PASSWORD \
      802-1x.phase2-auth pap \
