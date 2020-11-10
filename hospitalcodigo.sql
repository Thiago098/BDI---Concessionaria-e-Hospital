CREATE TABLE "pacientes" (
	"idpaciente"	INTEGER DEFAULT 1 CHECK(1),
	"nome"	INTEGER NOT NULL DEFAULT 45,
	"sexo"	INTEGER NOT NULL DEFAULT 1,
	"idade"	INTEGER NOT NULL DEFAULT 45,
	"doenca_inicial"	INTEGER DEFAULT 30,
	PRIMARY KEY("idpaciente" AUTOINCREMENT)
);

CREATE TABLE "consultas" (
	"idmedico"	INTEGER DEFAULT 10,
	"idpaciente"	INTEGER DEFAULT 10,
	"dia"	INTEGER NOT NULL,
	"hora"	INTEGER NOT NULL,
	"idambulatorio"	INTEGER DEFAULT 10,
	"iddoenca"	INTEGER DEFAULT 5,
	PRIMARY KEY("idmedico" AUTOINCREMENT),
	FOREIGN KEY("iddoenca") REFERENCES "doenca"("iddoenca"),
	FOREIGN KEY("idpaciente") REFERENCES "pacientes"("idpaciente"),
	FOREIGN KEY("idambulatorio") REFERENCES "ambulatorio"("idambulatorio")
);

CREATE TABLE "medico" (
	"idmedico"	INTEGER DEFAULT 10 CHECK(1),
	"idambulatorio"	INTEGER,
	"nome"	INTEGER DEFAULT 45,
	"crm"	INTEGER DEFAULT 45,
	"salario"	REAL,
	"idade"	INTEGER DEFAULT 11,
	"idespecialidades"	INTEGER,
	PRIMARY KEY("idmedico" AUTOINCREMENT),
	FOREIGN KEY("idambulatorio") REFERENCES "ambulatorio"("idambulatorio")
);

CREATE TABLE "especialidades" (
	"idespecialidades"	INTEGER DEFAULT 5 CHECK(1),
	"descricao"	INTEGER NOT NULL DEFAULT 50,
	PRIMARY KEY("idespecialidades" AUTOINCREMENT)
);

CREATE TABLE "doenca" (
	"iddoenca"	INTEGER DEFAULT 5 CHECK(1),
	"descricao"	INTEGER NOT NULL DEFAULT 30,
	PRIMARY KEY("iddoenca" AUTOINCREMENT)
);

CREATE TABLE "ambulatorio" (
	"idambulatorio"	INTEGER DEFAULT 10 CHECK(1),
	"numero"	INTEGER NOT NULL DEFAULT 45,
	"andar"	INTEGER NOT NULL DEFAULT 11,
	"capacidade"	INTEGER NOT NULL DEFAULT 11,
	PRIMARY KEY("idambulatorio" AUTOINCREMENT)
);

CREATE TABLE "funcionario" (
	"idfuncionario"	INTEGER DEFAULT 10 CHECK(1),
	"idambulatorio"	INTEGER,
	"nome"	INTEGER NOT NULL DEFAULT 45,
	"idade"	INTEGER NOT NULL DEFAULT 11,
	"sexo"	INTEGER NOT NULL DEFAULT 1,
	"salario"	INTEGER NOT NULL,
	"cidade"	INTEGER NOT NULL DEFAULT 45,
	PRIMARY KEY("idfuncionario" AUTOINCREMENT),
	FOREIGN KEY("idambulatorio") REFERENCES "ambulatorio"("idambulatorio")
);