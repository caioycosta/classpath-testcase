all : test

clientpack : serverpack
	javac -d build -cp build/serverjar.jar clientpackage/*.java
	cd build; jar cfe clientjar.jar clientpackage.Program clientpackage
	cd build; rm -rf clientpackage


serverpack :
	-mkdir build
	javac -d build serverpackage/*.java
	cd build; jar cf serverjar.jar serverpackage
	cd build; rm -rf serverpackage

test : clientpack
	java -cp build/serverjar.jar -jar build/clientjar.jar

clean : 	
	rm -rf build
