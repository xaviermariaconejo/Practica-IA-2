entrega: 
	rm -rf Entrega Entrega_SBC.tar.gz 
	mkdir Entrega
	cp README.txt Entrega/README.txt
	mkdir Entrega/Documentacio
	mkdir Entrega/CLIPS
	cp clips/* Entrega/CLIPS/
	cp README-clips.txt Entrega/CLIPS/COM-EXECUTAR.txt
	cp documentacio/practica2.pdf Entrega/Documentacio/Documentacio_SBC.pdf
	cp ontologia-grafic.png Entrega/Documentacio/
	mkdir Entrega/Documentacio/Execucions\ CLIPS
	cp execucions\ CLIPS/* Entrega/Documentacio/Execucions\ CLIPS/
	mkdir Entrega/Documentacio/Script\ Viatges	
	cp scripts/travel-generator.sh Entrega/Documentacio/Script\ Viatges/
	mkdir Entrega/Ontologia
	cp ontology/* Entrega/Ontologia
	mkdir Entrega/CLIPS_i_ONTOLOGIA
	cp -r Entrega/CLIPS Entrega/CLIPS_i_ONTOLOGIA/
	cp -r Entrega/Ontologia Entrega/CLIPS_i_ONTOLOGIA/
	cp scripts/travel-generator.sh Entrega/CLIPS_i_ONTOLOGIA/Ontologia/
	cd Entrega;\
	zip -r CLIPS_i_ONTOLOGIA.zip CLIPS_i_ONTOLOGIA
	rm -rf Entrega/CLIPS Entrega/Ontologia Entrega/CLIPS_i_ONTOLOGIA
	zip -y -r -q Entrega_SBC.zip Entrega
