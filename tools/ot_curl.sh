i=0
total=1000
while [ $i -le $total ] 
do
	time=$(date +%s.${RANDOM})
	curl -X POST -H Content-Type:application/json http://192.168.1.221:32224/dataInput -d \
'{"event": "otCreated","payload":{"id": '${i}', "name": "jose", "email": "jose@brobridge.com"}}'
#'{ "event": "otCreated","payload":{"Time":'$time', "TI_SMT001":26.6900005, "HI_SMT001":48.5299988, "CO2_SMT001":475, "PM_SMT001":2, "TI_DIP001":26.2800007, "HI_DIP001":54.1899986, "CO2_DIP001":510, "PM_DIP001":32, "TI_SYS001":25.8999996, "HI_SYS001":55.5800018, "CO2_SYS001":557, "PM_SYS001":8, "TI_IQC001":25.5100002, "HI_IQC001":58.1199989, "CO2_IQC001":571, "PM_IQC001":11, "TI_WAR001":25.4500008, "HI_WAR001":58.8800011, "CO2_WAR001":529, "PM_WAR001":10, "TI_OFF001":23.7800007, "HI_OFF001":62.9500008, "CO2_OFF001":673, "PM_OFF001":6, "TI_E001":22.6000004, "HI_E001":63.4900017, "TI_E002":23.4699993, "HI_E002":60.2000008, "TI_E003":23.2199993, "HI_E003":61.1699982, "TI_E004":22.3899994, "HI_E004":61.5, "TI_E005":23.0699997, "HI_E005":59.7099991, "TI_E006":22.5200005, "HI_E006":61.4799995, "TI_E007":22.9300003, "HI_E007":58.5200005, "TI_E008":23.4200001, "HI_E008":57.7799988, "TI_E009":22.2299995, "HI_E009":60.9300003, "TI_E011":21.0300007, "HI_E011":63.0099983, "TI_E012":21.6800003, "HI_E012":62.5800018, "TI_E013":23.3999996, "HI_E013":58.3600006, "TI_E014":24.3299999, "HI_E014":58.1599998, "TI_E015":24.4899998, "HI_E015":59.3899994, "TI_E016":24.8999996, "HI_E016":56.7799988, "TI_E017":23.8899994, "HI_E017":59.8400002, "TI_E018":24.5, "HI_E018":59.0200005, "TI_E019":31.1200008, "HI_E019":35.8899994, "TI_E020":37.5999985, "HI_E020":27, "TI_E021":37.7000008, "HI_E021":27, "TI_E022":34.2999992, "HI_E022":32, "TI_E023":35.5, "HI_E023":30, "TI_E024":40.2000008, "TI_E025":39.7999992, "TI_E026":39.7000008, "TI_E027":38.4000015, "TI_E028":39, "TI_D001":125, "TI_D002":60, "TI_D003":0, "TI_D004":75, "PT_D004":7.30000019, "TI_D005":39, "PT_D005":7.30000019, "PT_D006":7.19999981, "TI_D006":-29.8999996, "FI_D007":0, "TI_D008":26.7999992, "HI_D008":0.100000001, "TI_D009":25.2000008, "HI_D009":6.4000001, "TI_D010":23.7999992, "HI_D010":54.4000015, "TI_D011":4.47736216, "FI_N2007":129421, "FI_OFFCW012":14.7953873, "TI_INCW012":12.2853661, "TI_OUTCW012":11.1041298, "FI_ACCCW012":452.65097, "TI_INCW013":11.6999998, "TI_OUTCW013":13.6999998, "FI_DIPCW013":2.04589576e-43, "FI_ACCCW013":2729114, "FI_KWCW013":339.377014, "PWM_B001_KW":26.0210419, "PWM_B001_PF":79.6943512}}' &
	i=$(($i+1))
done