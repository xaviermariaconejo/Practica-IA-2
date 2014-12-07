entrega: 
	rm -rf Entrega Entrega_SBC.tar.gz 
	mkdir Entrega
	cp README.txt Entrega/README.txt
	mkdir Entrega/Documentacio
	mkdir Entrega/CLIPS
	cp clips/* Entrega/CLIPS/
	cp README-clips.txt Entrega/CLIPS/COM-EXECUTAR.txt
	cp documentacio/practica2.pdf Entrega/Documentacio/Documentacio_SBC.pdf
	mkdir Entrega/Documentacio/Execucions\ CLIPS
	cp execucions\ CLIPS/* Entrega/Documentacio/Execucions\ CLIPS/
	mkdir Entrega/Documentacio/Script\ Viatges	
	cp scripts/travel-generator.sh Entrega/Documentacio/Script\ Viatges/
	mkdir Entrega/Ontologia
	cp ontology/* Entrega/Ontologia
	tar -zcvf Entrega_SBC.tar.gz Entrega 
