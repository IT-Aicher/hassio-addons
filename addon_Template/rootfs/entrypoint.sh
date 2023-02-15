#!/usr/bin/with-contenv bashio

#
##
###=====  start custom code
echo ""
echo ""
echo "Hello world!"


# Read (Users-)Settings
bashio::log.info "Read and create configuration..."

Radio_Button_Choice=$(bashio::config 'Radio_Button')

#for textfelder in $(bashio::config 'textfeld|keys'); do
#	MHD_BBD=$(bashio::config "textfeld[${textfelder}].Jahr")
#done
ssl_switch=$(bashio::config 'Schalter')
zahl=$(bashio::config 'Zahl')

# and write to a file (inside the container)
{
	echo "option RdB: ${Radio_Button_Choice};"
	echo "option ssl: ${ssl_switch};"
} > /etc/custom_addon.conf

# do something with this amazing config
cat /etc/custom_addon.conf


{
	echo "dates;"
	echo " option expired: ${zahl};"
} >> /etc/custom_addon.conf

# do something with it again
tail /etc/custom_addon.conf

bashio::log.info "wait 20 sec. for something ..."
sleep 20

echo "Bye bye pretty world!"
echo ""
echo ""
