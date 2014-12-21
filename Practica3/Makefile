entrega: 
	rm -rf Entrega Entrega_Planificacio.zip
	mkdir Entrega
	cp README.txt Entrega/README.txt
	mkdir Entrega/Documentacio
	cp documentacio/practica3.pdf Entrega/Documentacio/Documentacio_de_la_practica.pdf
	mkdir Entrega/PDDL
	cp Base.pddl Entrega/PDDL
	cp Extension* Entrega/PDDL
	mkdir Entrega/Jocs_Prova
	cp JP* Entrega/Jocs_Prova
	mkdir Entrega/Experiment
	cp -R Experimento/. Entrega/Experiment
	cd Entrega;\
	zip -y -r -q Jocs_Prova.zip Jocs_Prova;\
	rm -r Jocs_Prova;\
	zip -y -r -q PDDL.zip PDDL;\
	rm -r PDDL;\
	zip -y -r -q Experiment.zip Experiment;\
	rm -r Experiment
	zip -y -r -q Entrega_Planificacio.zip Entrega
