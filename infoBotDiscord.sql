/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8 */;

drop database if exists heroku_59f1f15e195609b;
create database heroku_59f1f15e195609b;
use heroku_59f1f15e195609b;

create table autoridades (
rector varchar(50),
vicerector varchar(50));
insert into autoridades(rector, vicerector) values ("Ph.D. Cecilia Paredes", "Ph.D. Paúl Herrera");

create table fadcom (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fadcom(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Ph.D. Báez Meza Marcelo Rafael", "M.Sc. Rodríguez Vélez Luis Hernán", "	Diseño Web y Aplicaciones Multimedia: Mgtr. Jácome López Fausto Enrique.
	Diseño de Productos: M.Sc. Lombeida Chávez Jorge Ligdano.
	Producción Para Medios de Comunicación: M.Sc. Macías Velastegui Diana Ruth.
	Diseño Gráfico: Dra. Pilay García María de Lourdes.","	Producción Para Medios de Comunicación: M.Sc. Glenda Jácome
	Diseño Web y Aplicaciones Multimedia: M.Sc. Macías Velastegui Diana Ruth.
	Diseño Gráfico: M.Sc. Macías Velastegui Diana Ruth.
","	Diseño Gráfico: M.Sc. Andrea Pino.
	Producción Para Medios de Comunicación: M.Sc. Daniel Castelo.
	Diseño Web y Aplicaciones Multimedia: M.Sc. Daniel Castelo.
");

create table fcv (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fcv(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Ph.D. Nieto Wigby Julia Ruth.", "Ph.D. Jiménez Feijoo María Isabel.", "	Ingeniería Biológica: M.Sc. Torres Ulloa Angélica Malena.
	Biología: M.Sc. Reyes Chejín Andrea Sofía.
	Licenciatura en Nutrición y Dietética: M.Sc. Cucalón Ramírez María Gabriela.
","No hay informacion disponible","No hay informacion disponible");

create table fcnm (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fcnm (decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Mgtr. Baquerizo Palma Guillermo Alejandro", "Ph.D. Pastuizaca Fernández María Nela", "	Logística y Transporte: Mgtr. Ronquillo Franco Carlos Alfredo.
	Ingeniería en Estadística: Mgtr. Moreira Villegas Francisco Antonio.
	Ingeniería Química: M.Sc. Nadia Magaly Flores Manrique.
	Matemáticas: Ph.D. Luz Elimar Marchán Mendoza.
","	Ingeniería en Estadística: M.Sc. Choez Salazar Manuel Geovanny.
	Ingeniería Química: M.Sc. Escala Benites Francesca Elizabeth.
	Logística y Transporte: M.Sc. Varas Ordoñez Alfredo José.
","	Ingeniería en Estadística: Mgtr. González Camba Sandra Paola.
	Ingeniería Química: Mgtr. Apolo Loayza Héctor Iván.
	Logística y Transporte: M.Sc. De Santis Bermeo David Antonio.
	Matemáticas: M.Sc. Avilés Monroy Jennifer Alexis.
");

create table fcsh (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fcsh(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("M.Sc. Alicia Guerrero Montenegro", "M.Sc. Valdiviezo Valenzuela Patricia", "	Licenciatura en Turismo: Dr. Calle Lituma Sebastián.
	Licenciatura en Administración de Empresas: M.Sc. Escobar Murillo Sara.
	Licenciatura en Arqueología: M.Sc. Lemus Sares Daniel Eduardo.
	Licenciatura en Auditoría y Control de Gestión: M.Sc. Vásquez Castro Caterine Narcisa.
	Economía: M.Sc. Vilela Govea Gabriela
","	M.Sc. Silva Ordoñez Lorena Del Carmen","	Economía: M.Sc. Vaca López Gonzalo.
	Licenciatura en Auditoría y Control de Gestión: M.Sc. Vaca López Gonzalo.
");

create table fict (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fict(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Ph.D. Paola Romero.", "Ph.D. Eddy Clemente.", "	Ingeniería en Petróleo: M.Sc. Jorge Lligüizaca.
	Ingeniería en Minas: Ph.D. Silvia Loaiza.
	Ingeniería Civil: M.Sc. Nadia Quijano.
	Geología: Ph.D. Maurizio Mulas.
","	Ingeniería Civil: M.Sc. Walter Francisco Hurtares Orrala.","No hay informacion disponible");

create table fiec (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fiec(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Dr. César Martín Moreno.", "Ph.D. María Antonieta Álvarez Villanueva.", "	Ingeniería en Computación: Mg. José Luis Asencio.
	Ingeniería en Electricidad: M.Sc. Jimmy Córdova.
	Ingeniería en Electrónica y Automatización: Ing. David Vaca.
	Ingeniería en Telecomunicaciones: Mg. José Félix Moncayo.
	Ingeniería en Telemática: Ph.D. José Córdova García.
","	Ingeniería en Computación: Mg. Frank Malo.
	Ingeniería en Electricidad: M.Sc. Fernando Vaca.
	Ingeniería en Electrónica y Automatización: Ing. José Cueva.
	Ingeniería en Telecomunicaciones: Ing. Luis Vásquez.
	Ingeniería en Telemática: Mg. Adriana Collaguazo.
","	Ingeniería en Computación: M.Sc. Cruz María Falcones.
	Ingeniería en Electricidad: Mg. Héctor Plaza.
	Ingeniería en Electrónica y Automatización: Ing. María Ramírez.
	Ingeniería en Telecomunicaciones: Ing. Maricela Freire Barba.
	Ingeniería en Telemática: M.Sc. Rayner Durango.
");

create table fimcp (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fimcp(decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("Ph.D. Ramírez Mosquera Ángel Diego.", "Ph.D. Rivas Fermín Ana Luisa.", "	Ingeniería en Alimentos: M.Sc. Tagle Freire Danny Steven
	Ingeniería industrial: M.Sc. López Sarzosa María Fernanda
	Ingeniería en Materiales: Ph.D. Tapia Bastidas Clotario Vladimir
	Ingeniería Mecánica: Mgtr. Boero Vera Andrea Jael
	Ingeniería en Mecatrónica: M.Sc. Terán Calle Efraín Andrés
","	Ingeniería en Alimentos: M.Sc. Chuchuca Morán Galo Wenceslao.
	Ingeniería industrial: Ing. Aizprua Borbor Joshiro Ronin.
	Ingeniería en Materiales: Mgtr. Perugachi Benalcázar Cesar Rodrigo.
	Ingeniería Mecánica: Ing. Cando Castillo Maria Gabriela.
	Ingeniería en Mecatrónica: Ing. Pazmiño Renteria Alexander Javier.
","	Ingeniería en Alimentos: Ing. Plaza Ibarra Luis Antonio.
	Ingeniería industrial: Mgtr. Adanaqué Bravo Ingrid Elsa.
	Ingeniería en Materiales: Ing. Reyes Ortiz Jonathan David.
	Ingeniería Mecánica: Dr. Peralta Jaramillo Juan Manuel.
	Ingeniería en Mecatrónica: Mgtr. Puruncajas Maza Bryan Joao.
");


create table fimcm (
decano varchar(50),
subdecano varchar(50),
coordCarrera text(1000),
coordPractEmp text(1000),
coordPractCom text(1000));
insert into fimcm (decano, subdecano, coordCarrera, coordPractEmp, coordPractCom) values ("M.Sc. Alejandro Chanabá Ruiz.", "M.Sc. Víctor Osorio Cevallos.", "	Oceanografía: M.Sc. Jonathan Cedeño Oviedo.
	Ingeniería Naval: M.Sc. Nadia Muñoz.
	Acuicultura: M.Sc. Patricia Urdiales.
","	Oceanografía: M.Sc. Luis Altamirano Pérez.
	Ingeniería Naval: M.Sc. Jorge Faytong.
	Acuicultura: M.Sc. Adrián Márquez.
","	Oceanografía: M.Sc. Gina Andrade García.
	Ingeniería Naval: Ing. José Rodríguez.
	Acuicultura: M.Sc. Enrique Blacio.
");



create table facultades(
fadcom text(1000),
fcv text(1000),
fcnm text(1000),
fcsh text(1000),
fict text(1000),
fiec text(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci,
fimcp text(1000),
fimcm text(1000))ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE facultades ROW_FORMAT=DYNAMIC;

insert into facultades values (
"Es la Facultad de Arte, Diseño y Comunicación Audiovisual de la ESPOL. Su sede principal está ubicada en el edificio de administración, grado y postgrado en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Licenciatura en Diseño Gráfico
- Licenciatura en Producción para Medios de Comunicación
- Licenciatura en Diseño de Productos
",
"Es la Facultad de Ciencias de la Vida de la ESPOL. El Decanato y Subdecanato de la Facultad Ciencias de la Vida de ESPOL, está ubicado en el Edificio 37, planta alta antiguo CISE y Biblioteca de tecnologías.
Cuenta con la siguientes carreras:
- Biología
- Ingeniería Agrícola y Biológica
- Licenciatura en Nutrición y Dietética",
"Es la Facultad de Ciencias Naturales y Matemáticas de la ESPOL. Su sede principal está ubicada en el edificio de administración, pregrado y posgrado en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Logística y Transporte
- Estadística
- Ingeniería Química
- Matemática",
"Es la Facultad de Ciencias Sociales y Humanísticas de la ESPOL. 
Cuenta con las siguientes carreras:
- Economía
- Licenciatura en Administración de Empresas
- Licenciatura en Auditoría y Control de Gestión
- Licenciatura en Turismo
- Licenciatura en Arqueología",
"Es la Facultad de Ingeniería en Ciencias de la Tierra de la ESPOL. Su dede principal está ubicada en el edificio de administración, pregrado y posgrado en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Ingeniería Civil
- Minas
- Geología
- Petróleo",
"Es la Facultad de Ingeniería en Electricidad y Computación de la ESPOL. Su sede principal está ubicado en el edificio de administración, pregrado y posgrado en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Ingeniería en Electricidad
- Ingeniería en Electrónica y Automatización
- Ingeniería en Telecomunicaciones
- Ingeniería en Telemática
- Ingeniería en Computación",
"Es la Facultad de Ingeniería en Mecánica y Ciencias de la Producción de la ESPOL. Está ubicada en el edificio de administración, pregrado y posgrado en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Ingeniería en Materiales
- Ingeniería en Mecatrónica
- Ingeniería en Alimentos
- Ingeniería Industrial
- Ingeniería Mecánica",
"Es la Facultad de Ingeniería Marítima y Ciencias del Mar de la ESPOL. Su sede principal está ubicada en el edificio 60 en el Campus Gustavo Galindo, ubicado en la Prosperina, km 30.5 de la vía Perimetral.
Cuenta con las siguientes carreras:
- Ingeniería Naval
- Oceanografía
- Acuicultura");

create table Pae (
procesoRegistroPAE text(1000),
materiasDisponiblesPAE text(1000),
cantidadCreditosOMateriasPAE text(1000),
procesoSolicitarMateriaPAE text(1000),
registroPAEPagarDeudas text(1000),
valorMateriasPAE text(1000)
);
ALTER TABLE Pae ROW_FORMAT=DYNAMIC;

create table deudas(
prorrogasDeudas text(1000),
PagoDeudaSinAcercarseAVentanilla text(1000),
EliminarOPagarDeudasDeNoValor text(1000),
deudaConsejeriaAcademica text(1000),
casosDeudaEnElSistema text(1000),
anularDeudaMateriaIntegradora text(1000)
);
ALTER TABLE deudas ROW_FORMAT=DYNAMIC;

create table registrosYMaterias(
tomarMasMateriasComplementarias text(1000),
procesoTerceraMatricula text(1000),
valorMateriasSegundaMatricula text(1000),
consecuenciasDejarDeEstudiar text(1000),
perderMateriaPorFaltas text(1000),
queSignificaEstudianteRegular text(1000),
creditosParaSerEstudianteRegular text(1000),
cuandoPierdoGratuidad text(1000),
procesoRegistroMateriaIntegradora text(1000),
creditosMateriaIngregradora text(1000),
queEsMatriculaEspecial text(1000),
anularElSemestre text(1000),
procesoParaCambioDeCarrera text(1000),
procesoConvalidacionDeMateria text(1000),
cuandoPuedoAnularUnaMateria text(1000),
retirarUnaMateriaFueraDePlazo text(1000),
cantidadCreditosEnSemestre text(1000),
procesoParaObtenerTitulo text(1000),
calendarioAcademico text(1000),
recalificacion text(1000),
registro text(1000),
becas text(1000),
calificaciones text(1000),
examenes text(1000),
aprobar text(1000),
extraordinario text (1000),
justificacion text(1000),
obligatoriedad text(1000),
segundaMatricula text(1000)
);
ALTER TABLE registrosYMaterias ROW_FORMAT=DYNAMIC;

create table bienestar(
deportesParaPracticar text(1000),
serviciosOnline text(1000),
transporte text(1000),
gimnasio text(1000),
bienestar text(1000),
politicas text(1000),
academico text(1000),
cenacad text(1000),
alimentos text(1000),
biblioteca text(1000),
consejerias text (1000),
repositorio text (1000),
correo text(1000),
sidweb text(1000),
examenesMedicos text (1000),
clubes text(1000),
disciplina text(1000),
sanciones text(1000),
infracciones text(1000),
deshonestidad text(1000)
);
ALTER TABLE bienestar ROW_FORMAT=DYNAMIC;

create table pasantias(
objetivoPasantiasLaborales text(1000),
obligatoriedadPasantiasLaborales text(1000),
duracionPasantiasLaborales text(1000),
pasantiasLaboralesDespuesDeMateriaIntegradora text(1000),
pasantiasLaboralesEnPeriodoDeVacacionesDeProfesores text(1000),
horasyCreditosPasantiasLaborales text(1000),
horasyCreditosPracticasComunitarias text(1000),
horasTotalesPracticasPreProfesionales text(1000),
dondeRealizarPracticasComunitarias text(1000),
requisitosPasantiasLaborales text(1000),
convenioPasantiasLaborales text(1000),
reprobarPasantiasLaborales text(1000),
queEsPasantia text(1000),
conseguirPasantiasLaborales text(1000),
formatoEnElDesarrolloPracticasPreprofesionales text(1000),
queEsAyudantiaInvestigacion text(1000),
queEsAyudantiaDocencia text(1000),
queEsAyudantiaGestion text(1000),
registroAAyudantia text(1000),
promedioMinimoParaAyudantia text(1000),
horarioClasesDeProfesor text(1000),
practicas text(1000),
comunitarias text(1000),
registroPasantias text(1000),
pasantiasVacaciones text(1000),
mesaPracticas text(1000),
informePasantias text(1000)
);
ALTER TABLE pasantias ROW_FORMAT=DYNAMIC;

create table administracion(
autoridadesConsejoPolitecnico text(1000),
campusProsperina text (1000),
campusPenias text(1000),
gerencia text(1000)
);
ALTER TABLE administracion ROW_FORMAT=DYNAMIC;

create table deportesEspol(
kayak text(1000),
ciclismo text(1000),
volleyBasketTenisMesa text(1000),
futbol text(1000),
cheerleader text(1000),
tenis text(1000),
ajedrez text(1000),
natacion text(1000),
yoga text(1000)
);
ALTER TABLE deportesEspol ROW_FORMAT=DYNAMIC;

insert into Pae values (
"Es como un proceso normal de registros en el académico, y acorde al calendario disponible en el link http://www.espol.edu.ec/es/vida-politecnica/calendario-academico ",
"Las materias disponibles para el PAE ya aparecen en el Académico y en función de ello ya se pueden visualizar.",
"En el PAE solo puedes tomar hasta un máximo de 2 materias",
"La planificación para el PAE se realiza de manera interna y no se puede solicitar materias. Aunque puedes hacer huelga o recolectar firmas para que abran una materia ;)",
"Debes tener las deudas canceladas previo al registro.",
"Se calcula en función de la categoría ISE asignada y el número de créditos que tienen las materias que vaya a matricularse +la tasa por matrícula"
);

insert into deudas values(
"No habrá más prórrogas generales; la última prórroga general aprobada por el Consejo Politécnico mediante resolución Nro. 20-08-353, vence el 19 de febrero.  Sin embargo, existe la prórroga a la que todos los estudiantes tienen derecho si aún no la han solicitado. Por tanto, un estudiante podrá solicitar una prórroga adicional e individual, sólo si no solicitó alguna prórroga al pago de deudas en periodos académicos anteriores a las prórrogas generales que se otorgaron en el 2020.",
"Si tu banco posee plataforma web puedes hacer transferencias ingresando en el apartado de 'pago a insitituciones y buscar el nombre de la ESPOL'
O si no, no te queda de otra y debes acercarte a una entidad bancaria del banco del pacifico y realizar el pago en ventanilla",
"Los estudiantes que presentan deudas de no valor, como por ejemplo, aquellas que se generan por no realizar las consejerías, no responder la encuesta del CENACAD, ocasiona que los estudiantes tengan horarios de registros al final del proceso de registros, no puedan sacar certificados o documentos que requieran.
Si un estudiante tiene ahora una deuda de no valor por no haber realizado consejerías, tiene aún la oportunidad de eliminar su deuda de no valor y registrarse en su horario asignado, si realiza la consejería de acuerdo a lo que indica el cronograma del I PAO",
"Las dos razones pueden ser:
• Por no haber realizado la encuesta post-consejería.
• Porque el sistema no se ha actualizado.",
"Los estudiantes pueden tener deudas de unidad (no tiene valor) y deuda de valor.
Deudas de Unidad:
• Por no realizar las Consejerías Académicas.
• Por no entregar en la S.T.A., el Acta de Grado/título de Bachiller.
• Por no entregar en Bienestar Estudiantil el Certificado médico.
• Por no hacer la Evaluación a profesores (CENACAD), etc.

Deudas de valor:
• Al eliminar una materia habiéndose registrado en período de matrícula extraordinaria y/o especial.
• Al tomar una o más materias por segunda o tercera vez.
• Registro extraordinario/especie.
• Al no completar el número de créditos mínimo en el registro para tener la gratuidad (menos de 11 créditos).
• Por no acercarse a sufragar en período de elecciones.
• Por no devolver material bibliográfico de las Biblioteca de ESPOL.
• Por no cancelar el alquiler de las bicicletas.",
"Cuando los digitales de su proyecto integrador hayan sido despachados por la Unidad Académica a la Biblioteca Central y Biblioteca de FIMCP."
);

insert into registrosYMaterias values(
"Las materias complementarias se ubican en dos áreas: 
(i) Ciencias Sociales y Humanidades; y 
(ii) Artes, Deportes e Idiomas. 
Los estudiantes deben tomar una asignatura complementaria de cada área para cumplir con su malla, y sólo pueden tomar una tercera asignatura complementaria dentro de la gratuidad. En efecto, puede tomar más asignaturas complementarias pero éstas no entran en la gratuidad.",
"Un estudiante obtiene de forma automatica, no amparada por la gratuidad, la tercera matricula, bajo cumplimiento de alguna de las siguientes condiciones: 
o Requiera matrícula por tercera vez en asignaturas clasificadas como Educación General, Ciencias Básicas y Matemáticas.
o Si el estudiante tiene un promedio general de carrera igual o superior a seis y medio (6.5), siempre y cuando no se trate de la Unidad de Integración Curricular.
De no cumplirse ninguna de las condiciones anteriores, el estudiante puede solicitar al subdecanato de la facultad correspondiente la tercera matricula, pero debe demostrar que ocasionó la pérdida de la segunda matrícula. Dicha causa debe ser imprevisible, irresistible y no imputable a negligencia del estudiante. (es decir no debe ser porque seas vago XD) De ser negada la solicitud, el estudiante pierde la carrera. Hay opción a una segunda solicitud, ampliando la información de la primera solicitud.
Cuando un estudiante deba tomar una o más asignaturas en tercera matrícula, estará obligado a tomarla(s), con un máximo de tres, incluyendo las asignaturas en tercera matrícula; si éstas no se ofertan(n) en el período académico, el estudiante podrá solicitar matrícula en hasta tres asignaturas, o cursos o sus equivalentes durante ese período académico.
",
"Los valores cambian un poco agregándose al valor por crédito $7*G exclusivamente a la(s) asignatura(s) que tome por 2da ocasión, donde G se encuentra en el rango del 10% al 100%, según el número de asignaturas totales reprobadas en su historial hasta el término inmediato anterior. La fórmula quedaría como sigue:
Valor a pagar=$ 20+[A (valor por credito segun ISE)+$ 7 x G(% que depende del historial de reprobacion hasta el termino inmediato anterior)]  x Nro.creditos 2da vez

Por ejemplo, si su categoría es ISE 2 y deseas tomar 1 asignatura de 2 créditos por segunda vez durante el PAO, el valor a pagar se calcula como sigue, tomando en consideración que tienes 3 materias reprobadas en tu historial:
Valor a pagar por 1 asignatura en 2da vez=$ 20+[$15 +($ 7 x 0.4)]  x 2=$ 55.60

Referencia:
Reglamento de Aranceles, Matrículas y Derechos para el Nivel de Admisiones y Nivel de Grado
https://www.dspace.espol.edu.ec/bitstream/123456789/42920/4/Reglamento%20de%20Aranceles%20%2c%20matriculas%20y%20derechos%20para%20el%20nivel%20de%20admisiones%20y%20nivel%20de%20grado.pdf
",
"Sólo el retrasarse en la malla porque puede retomar su carrera el siguiente semestre. ",
"Con el 40% de faltas en una materia, ya valiste, repruebas automaticamente esa materia.",
"Estudiante Regular es aquel que se encuentra matriculado en al menos el 60% de las materias, cursos o sus equivalentes que permite su malla curricular por cada término académico ordinario.",
"Actualmente cada semestre tiene 15 créditos (cuente las horas teóricas de cada clase). Para ser regular se requiere el 60%, es decir, estar registrado en 9 créditos.  Existe una propuesta al CES de bajar esto a 40% por la emergencia, pero aún no hay resolución al respecto. Sigue vigente el 60%.",
"Los estudiantes perderán definitivamente la gratuidad cuando el porcentaje acumulado de reprobación de materias sea del 30% o más respecto a la carrera que el estudiante cursa; considerando el número total de materias desde la primera carrera, deberán pagar un valor fijo correspondiente a la matrícula, conforme a lo establecido en el Artículo 6 del Reglamento 4336 de ESPOL.",
"• Tener matrícula activa.
• Solicitar ampliación a través del académico en línea. Para el registro, todo estudiante debe tener debidamente ingresadas en el sistema la totalidad de sus horas de prácticas pre profesionales (empresariales y vinculación).
• No exceder del máximo de 7 créditos faltantes para culminar su malla curricular. Para matricularse en investigación (opción de titulación), el estudiante debe cursar en paralelo de Materia Integradora.
• Esperar respuesta de subdecanato (Si se aprueba la solicitud se registrará automáticamente, caso contrario se le enviará un correo indicando el motivo por el que fue rechazada).
• La materia integradora tiene 11 créditos, si le falta esta materia para cerrar su malla, ya es estudiante regular. No necesita presentar solicitud de regularidad.",
"Aunque en la malla se observan 3 créditos, en realidad MI equivale a 8 créditos. La razón es que el programa exige 384 horas de trabajo de titulación. Parte de ese proceso está el tomar el curso de Materia Integradora.",
"Es aquella que, en casos individuales excepcionales, otorga el Consejo Politécnico académico superior de las universidades y escuelas politécnicas, así como el organismo de gobierno de los institutos y conservatorios superiores, para quien, por circunstancias de caso fortuito o fuerza mayor debidamente documentadas, no se haya matriculado de manera ordinaria o extraordinaria. Esta solicitud se podrá realizar hasta dentro de los siete (7) días posteriores a la culminación del período de matrícula extraordinaria y se concederá únicamente para cursar períodos académicos ordinarios.",
"Un estudiante podrá solicitar al subdecanato de su unidad académica, la anulación del semestre, explicando el motivo por el cual no pudo realizar manual de manera ordinaria o extraordinaria, o el motivo específico de la anulación del semestre, mismo que debe puede ser por casos fortuitos o de fuerza mayor, enfermedad, embarazo, calamidad doméstica grave, problemas de salud grave o situaciones similares debidamente documentados.",
"1. Ingresar al Académico en Línea y escoger la pestaña 'Académico'.
2. En la parte superior derecha, dar clic en el símbolo con forma de casa y escoger la pestaña 'Certificados y Solicitudes'.
3. Dar clic en la pestaña 'solicitudes'.
4. Dar clic en la opción 'cambio  de carrera' y verificar requisitos.",
"La convalidación de una materia es una constancia de que el estudiante tiene conocimientos suficientes sobre ella. Una materia puede ser convalidada de dos maneras:

• Al haber aprobado un examen de convalidación/exoneración.
• Al cambiarse de carrera, pero solo si ha aprobado la materia previamente, siempre y cuando dicha materia sea común entre ambas mallas de carrera y obtenga como mínimo el 80% de igualdad respecto al contenido de la misma.",
"Un estudiante que curse una carrera podrá retirarse voluntariamente de una o varias asignaturas, cursos o equivalentes en un período académico ordinario, dentro del plazo definido en el calendario académico institucional, que en ningún caso podrá exceder los ocho días laborables contados desde el día de inicio de las actividades académicas.
Las materias se eliminan en el sistema académico en línea, haciendo click en la cruz roja a un costado del nombre de la materia.
",
"Un estudiante podrá solicitar al Consejo Directivo de su unidad académica, el retiro en una o varias asignaturas, cursos o equivalentes, fuera del plazo definido en el calendario académico institucional, únicamente en el caso de situaciones fortuitas o de fuerza mayor, demostrando en forma documentada estar impedido para continuar con sus estudios; la causa o evento declarado debe ser imprevisible, irresistible y no imputable a negligencia del estudiante.",
"Hasta 15 créditos.
Un crédito equivale a 48 horas de trabajo. Una clase de tipo 3/1/5 equivale a 9 horas de trabajo a la semana, x 16 semanas del semestre= 144 horas en el semestre. 144/48=3 créditos. Con la misma lógica, un curso 2/2/2 equivale a 2 créditos.",
"Una vez que se ha aprobado la materia integradora, no mantenga deudas con la Institución y haya entregado a conformidad los documentos de Materia Integradora, deberá enviar un correo al subdecano(a) o subdirector de su respectiva unidad académica la solicitud de evaluación final de su Trabajo de Titulación.",
"En el calendario académico se muestra las fechas de actividades que se desarrollaran a lo largo del término académico. Se puede consultar en el siguiente enlace: http://www.espol.edu.ec/es/vida-politecnica/calendario-academico",
"Para pedir recalificación primero puede hacerlo solicitando al profesor indicando la inconformidad de la calificación, el profesor tiene la obligación de revisar el examen nuevamente indicando al estudiante los motivos de la calificación. Si aún no está conforme con la calificación, podrá solicitar al Decano, Director o Coordinador respectivo, una nueva revisión, dentro de los cinco días hábiles posterior a la fecha de publicación de notas hecha por la secretaria de la unidad académica correspondiente. Esta se llevará acabo con un tribunal nombrado por una de las autoridades antes mencionadas, el cual está integrado por otros dos profesores. La resolución al que llegue este tribunal será inapelable y la calificación que se fije es la que se asentará en los registros de la Escuela.",
"El período de inscripción de la matrícula ordinaria (amparada por la gratuidad), se realiza en el académico en línea, en el plazo establecido por el calendario académico.
Los horarios en que cada estudiante puede registrarse son determinados por el promedio de calificación obtenido en el último año lectivo.
Revisa en que horario te toca registrarte! o si no te toca el baldeo!.
",
"La ESPOL ofrece oportunidades de becas de movilidad académica en el exterior -cursos cortos, estudios de grado, postgrado, doctorado, o pasantías de investigación- que ofertan instituciones y organismos internacionales para ciudadanos ecuatorianos. Para mas información consulte el siguiente enlace: http://www.espol.edu.ec/es/internacional#internacional ",
"La calificación de cada examen es sobre 100 puntos usando solo números enteros. La calificación final de la materia se obtiene sumando las dos mejores calificaciones de las tres (parcial, final y mejoramiento) y dividiendo esa cifra para 20, de esta manera se obtiene una calificación entre 0,00 y 10,00.",
"Las materias teóricas tienen un examen parcial, uno final y uno de mejoramiento. En las materias prácticas no existe examen ni calificación de mejoramiento, es una sola nota obtenida a lo largo del periodo académico. 
El examen parcial cubre el contenido dado hasta la fecha del mismo. Los exámenes finales y de mejoramiento son acumulativos e integrativos.
",
"Para aprobar una materia necesitas tener en el semestre 6 sobre 10. Si estas preguntando esto es porque te estas quedando ¿no?
",
"el registro extraoridinario se realiza en la semana siguiente a los registros ordinarios. Los registros extraordinarios no son amparados por la gratuidad y se realizan por el academico en linea",
"Lastimosamente no puedes justificar las faltas, si te rompes algo ya valiste :(",
"Debes asistir a clases, algunos profesores toman lista y si tienes un total de faltas equivalentes al 40% de las horas de clase, ya valiste, te quedas por faltas en esa materia.",
"La segunda matrícula ocurre cuando no alcanzaste el promedio minimo en una materia al final del semestre.
El registro de la segunda matricula se realiza normalmente durante el registro ordinario del siguiente semestre, pero la/las materias que tengan segunda matricula pierden la gratuidad."
);

insert into bienestar values(
"La ESPOL posee infraestructura que permite a la comunidad politécnica realizar diferentes deportes, entre ellos:
- Kayak
- Ciclismo
- Volleyball, Baloncesto y Tenis de mesa
- Futbol
- Cheerleader
- Tenis de Campo
- Ajedrez
- Natación
- YOGA",
"- Académico en línea: Permite consultar materias que se estén cursando, materias disponibles, horario de clases, horario de exámenes, calificaciones, deudas, solicitar certificados, etc.
- Académico de pregrado: https://www.academico.espol.edu.ec/
- Académico de posgrado: https://www.academico.espol.edu.ec/ 
- Biblioteca Virtual: 
Consiste en una base de datos que permite acceso a libros, papers y documentos de diferentes áreas de investigación. Enlace: http://www.cib.espol.edu.ec/ 
- Cenacad:
Permite realizar las evaluaciones a los profesores. Enlace: https://cenacad.espol.edu.ec/ 
- Consejerías académicas:
Permite resolver dudas e informarse sobre procesos académicos, como también recibir consejos por parte de un profesor asignado. Primero se debe obtener una cita a través del siguiente enlace: https://auth.espol.edu.ec/login?service=http%3A%2F%2Fwww.consejerias.espol.edu.ec%2Fhome.do 
- Repositorio:
Consiste en una base de datos donde se puede encontrar investigaciones realizadas por estudiantes y profesores, reglamentos y estatutos, así como también exámenes de términos anteriores. Enlace: http://www.dspace.espol.edu.ec/ 
- Servicio de correo:
Correo institucional asignado a cada estudiante individualmente.
- SIDWEB:
Consiste en un sistema que permite tener un control de las actividades y tareas asignadas por los profesores en las distintas materias. Enlace: https://www.sidweb.espol.edu.ec/ ",
"La empresa encarga del transporte exclusivo para estudiantes y activos de la institución es TRANSESPOL. Cuenta con 22 unidades, las cuales brindan servicio dentro del campus y fuera del campus con rutas a diferentes partes de la cuidad. Para más información puede consultar: http://www.transespol.gob.ec/",
"Dentro del campus se pueden encontrar dos gimnasios uno para uso exclusivo de los estudiantes y otro para docentes, administrativos y trabajadores de la institución.
o	Gimnasio para estudiantes:
Para el uso del gimnasio se solicitan ciertos requisitos, puede consultar en el siguiente enlace sobre eso y el horario de atención: http://www.bienestar.espol.edu.ec/GIMNASIO_ESTUDIANTES 
o	Gimnasio para docentes, administrativos y trabajadores:
Aquí puede consultar información sobre el horario de atención: http://www.bienestar.espol.edu.ec/LUNES%20CULTURALES
",
"UBEP es la unidad de bienestar estudiantil politécnico en donde se pueden encontrar servicios de atención médica, psicológica, odontológica y laboratorio clínico. Para más información puede consultar: http://www.bienestar.espol.edu.ec/ ",
"El profesor de la materia deberá dar conocer al inicio de las clases, tanto a estudiantes como a la unidad académica correspondiente, cuáles serán los lineamientos para las calificaciones, evaluaciones y políticas del curso, así como el número, tipo y valoración de aportes y trabajos a lo largo del semestre.",
"o	Académico en línea:
Permite consultar materias que se estén cursando, materias disponibles, horario de clases, horario de exámenes, calificaciones, deudas, solicitar certificados, etc.
	Académico de pregrado: https://www.academico.espol.edu.ec/ 
	Académico de posgrado: https://www.academico.espol.edu.ec/
",
"Permite realizar las evaluaciones a los profesores. Enlace: https://cenacad.espol.edu.ec/ .Puedes vengarte de esos profesores macheteros!!",
"Actualmente la institución cuenta con 27 concesionarios conformados por comedores, bares y quioscos, que ofrecen diversos servicios de alimentación a la comunidad politécnica, ubicados en los distintos espacios del Campus Gustavo Galindo Velasco.
Las concesiones de alimentos de la ESPOL ofertan variados productos alimenticios para diferentes horas del día, pensado en las preferencias, comodidad y bienestar de los usuarios.
Prueba los pasteles del chino, frente a fiec vieja!
",
"El sistema de información bibliotecario cuenta con una biblioteca central, ubicada junto al rectorado, y bibliotecas seccionales alrededor del campus.
En nuestras bibliotecas seccionales se puede encontrar material bibliográfico específico de las áreas de conocimiento de cada facultad.
En cambio, es nuestra biblioteca central la comunidad politécnica, como apoyo a sus actividades académicas y de investigación.
Tambien se puede dormir ahí ;).
"
"Biblioteca virtual: Consiste en una base de datos que permite acceso a libros, papers y documentos de diferentes áreas de investigación. Enlace: http://www.cib.espol.edu.ec/",
"Permite resolver dudas e informarse sobre procesos académicos, como también recibir consejos por parte de un profesor asignado. Primero se debe obtener una cita a través del siguiente enlace: https://auth.espol.edu.ec/login?service=http%3A%2F%2Fwww.consejerias.espol.edu.ec%2Fhome.do, en la misma plataforma encontrarás el nombre de tu consejero.",
"Consiste en una base de datos donde se puede encontrar investigaciones realizadas por estudiantes y profesores, reglamentos y estatutos, así como también exámenes de términos anteriores. Enlace: http://www.dspace.espol.edu.ec/ ",
"A cada estudiante se le asigna un correo individual, para ver los mensajes que te han llegado puedes hacerlo aqui: https://www.espol.edu.ec/ e ingresa al apartado de 'correo'. Si no tienes todavia el correo puedes solicitarlo a la Gerencia de Tecnologias y sistemas de información en el iguiente enlace: https://www.serviciosti.espol.edu.ec/ui/es/content/inicio/servicios.aspx
No entres a enlaces que te envíen por correo, se mas inteligente ;)",
"Consiste en un sistema que permite tener un control de las actividades y tareas asignadas por los profesores en las distintas materias. Enlace: https://www.sidweb.espol.edu.ec/
A veces se cae o va lento pero ten paciencia ;D",
"En el area de tecnologias se encuentra el Laboratorio clinico el cual es prestador externo, que  brinda servicios a la Comunidad Politécnica y a sus familiares en general.",
"Los clubes estudiantiles son grupos apolíticos multidisciplinarios que ofrecen a los alumnos de la ESPOL la oportunidad de desarrollarse en diversas áreas. Su formación académica se complementa con el aprendizaje adquirido en estos colectivos. 
La lista de los clubes crece constantemente, por lo que los estudiantes politécnicos están invitados a formar parte de ellos o fundar una agrupación que responda a sus intereses.
Puedes revisar los clubes disponibles en el siguiente enlace: http://www.espol.edu.ec/es/vida-estudiantil/clubes-estudiantiles ",
"Debe existir disciplina y respeto mutuo entre profesores, estudiantes y trabajadores, así como la práctica de los valores morales. 
Incumplir con esto puede hacer que te sancionen, pórtate bien! ",
"Las sanciones que se aplican en caso de infracciones realizadas por los alumnos son: 
Amonestación.
Anulación de exoneraciones y becas.
Suspensión o anulación de examen.
Reprobación de materias.
Expulsión temporal o definitiva de la institución, que será resuelta por el consejo politécnico. 
",
"Se consideran como infracciones por parte de los alumnos lo siguiente: 
Realizar actividades dentro y fuera del recinto de la institución que afecten al prestigio de ella.
Incumplimiento de la Ley de Universidades y Escuelas Politécnicas, el Estatuto y los Reglamentos.
Deshonestidad en los exámenes y demás actividades que demande la vida académica de la Institución.
Irrespeto a docentes, trabajadores y autoridades de la Institución.
Desacato a disposiciones emanadas de los organismos y autoridades de la Institución.
Las demás infracciones que se determinen en los Reglamentos.
",
"Cualquier estudiante que incurra en actos de deshonestidad académica premeditada estará sujeto a por lo menos la reprobación automática de la materia, de ser primera vez. En caso de reincidencia se le anulará la matrícula de forma permanente en la institución.
En caso de estudiantes que realicen actos deshonestos de manera circunstancial durante un examen o aporte, el profesor deberá impedir que el estudiante continúe rindiendo el examen o aporte, y obtendrá la calificación de CERO en dicha evaluación.  
"
);

insert into deportesEspol values( 
"Dentro del campus se puede encontrar un lago que permite a los estudiantes en asesoría de un experto disfrutar del deporte Kayak, siendo este también una materia de libre opción.",
"Alrededor del campus se encuentra una ciclovía que permite desplazarse a lo largo de la institución con su respectiva señalética. Y también la ESPOL ofrece un servicio de préstamo de bicicletas.",
"En el coliseo dentro del campus se encuentra una cancha multidisciplinaria que permite realizar baloncesto, volleyball y tenis de mesa.",
"Dentro del campus se encuentran dos canchas de césped, ambas con medidas reglamentarias aprobadas por la Federación Internacional de Futbol Asociado, FIFA.",
"La ESPOL también cuenta con un equipo de cheerleader, el cual es conformado por estudiantes que practican gimnasia olímpica y rutinas coreográficas en el coliseo." ,
"La ESPOL cuenta con un equipo de tenis de campo el cual suele participar en diferentes torneos en diferentes categorías.",
"El ajedrez politécnico es un referente en el desarrollo del ajedrez ecuatoriano. La actividad ajedrecística que ha desarrollado la ESPOL a lo largo del tiempo ha servido para dar un impulso al desarrollo del deporte en la ciudad y en el país.",
"La ESPOL cuenta con una piscina dentro del campus, además, de su propio equipo de natación, el cual participa en diferentes torneos nacionales, representando a la institución.",
"La ESPOL promueve la practica de YOGA con el objetivo de ayudar a mejorar los niveles de concentración y rendimiento de estudiantes de pregrado y postgrado, personal administrativo y docentes. También se desea optimizar las capacidades mentales de los practicantes mediante técnicas de concentración y meditación mindfulness.
"
); 

insert into pasantias values( 
"El objetivo de las Pasantías Estudiantiles o Laborales  de los estudiantes de la ESPOL es la de proporcionar al participante un complemento a la formación impartida por la institución a través del contacto directo con el área de influencia de su futura profesión.",
"Si, para optar a un título, los estudiantes deberán cumplir obligatoriamente con un período mínimo de pasantías laborales según lo establecido por cada unidad académica.",
"Las pasantías laborales, se pueden realizar al término de cada semestre o durante el período de clases si el estudiante tiene disponibilidad de tiempo. La duración de cada programa de pasantías laborales será de, por lo menos, 30 días.",
"No, las prácticas empresariales y comunitarias completas son prerrequisitos para matricularse en la materia integradora. ",
"Es preferible que las prácticas sean registradas con el respectivo coordinador de prácticas porque se debe asignar un tutor de prácticas. Para mayor información, se sugiere comunicarse con su coordinador de prácticas de la carrera.",
"El programa exige completar 240 horas. Si se hacen las prácticas empresariales durante un semestre normal, eso equivale a 5 créditos, por lo que le quedarían sólo 10 para cursos.",
"Se requieren 96 horas de comunitarias. Tomarlas durante el semestre, equivale a 2 créditos, por lo que ya no puede tomar más de 13 créditos en ese semestres",
"Debe realizar en total 336 horas, de las cuales 240 son de prácticas pre-profesionales empresariales y, 96 son de prácticas pre-profesionales de servicio comunitario.",
"Se pueden realizar a través de los programas institucionales, proyectos de servicio comunitario y actividades específicas dirigidos por docentes de las diferentes carreras.",
"Para realizar las prácticas preprofesionales, los estudiantes de la ESPOL deberán cumplir los siguientes requisitos:
1. Ser estudiante activo.
2. No estar en situación de prueba.
3. Cumplir con el perfil de practicante ligado a la práctica preprofesional.
4. Disponibilidad de créditos para realizar las prácticas. (2 créditos para practicas preprofesionales de servicio comunitario y 5 créditos para prácticas preprofesionales empresariales del máximo de 15 créditos permitidos al semestre)",
"Si, para el desarrollo de las prácticas preprofesionales, la ESPOL y las instituciones, empresas u organismos comunitarios, públicos o privados, suscribirán convenios de prácticas preprofesionales.
Para la ejecución de las prácticas preprofesionales empresariales se debe verificar la suscripción de los convenios previo al inicio de la práctica, mientras que para las de servicio comunitario se debe verificar que exista el o los convenios que amparen el desarrollo de los proyectos de servicio comunitario y/o actividades específicas de cada programa de vinculación, conforme a lo establecido en las normas del sistema de educación superior e internas de la ESPOL",
"Sí, se reprueba la práctica en las siguientes situaciones:
a) Por abandono de la práctica preprofesional declarado por el coordinador respectivo, sin que medie una justificación aprobada por la instancia correspondiente, que implique la existencia de caso fortuito o fuerza mayor.
b) Por incumplimiento declarado por el coordinador respectivo de la entrega oportuna de productos o servicios, o si estos no son de la calidad establecida, afectando los objetivos del proyecto y/o compromisos adquiridos con la comunidad beneficiaria o instituciones.

Los estudiantes que reprueben la práctica preprofesional perderán los beneficios de la gratuidad, y estarán sujetos a los pagos determinados en el Reglamento de Aranceles, Matrículas y Derechos para el nivel de Admisiones y nivel de Grado de la ESPOL. (Art. 63 del Reglamento de Grado de la ESPOL).",
"Es una práctica preprofesional empresarial donde el estudiante recibe una remuneración.",
"Debes postular en las opciones disponibles de tu sistema académico. También puedes conseguir una empresa por tu cuenta y comunicarlo al coordinador de prácticas preprofesionales empresariales para validar las actividades que realizarás dentro de las empresas.",
"Para las prácticas preprofesionales empresariales, debes realizar la carta de compromiso (FOR-UVS-05A, enlace: https://espolec-my.sharepoint.com/:f:/r/personal/vincula_espol_edu_ec/Documents/Compartido%20con%20todos%20los%20usuarios?csf=1&web=1&e=C4Glur) al iniciar la práctica y al finalizar debes solicitar el Informe Final a la empresa mediante el formato (FOR-UVS-15, enlace: https://espolec-my.sharepoint.com/:f:/g/personal/vincula_espol_edu_ec/Ely2xKEi63ZAlvmnoBM_IR0BDT3NqunIiWbZpuF5RlNPkQ?e=bzqgsX).

Para prácticas preprofesionales de servicio comunitario, no existe ningún formato a realizar, sólo deberás realizar presentación de informes y avances a través del portal de gestión de vínculos de acuerdo a las disposiciones del tutor.

Sin embargo, si perteneces a una carrera cerrada o realizas tus prácticas en Parque ¡ajá! Parque de la Ciencia, el proceso de prácticas no se realizará en plataforma y deberás llenar los siguientes formatos: https://espolec-my.sharepoint.com/personal/vincula_espol_edu_ec/_layouts/15/onedrive.aspx
",
"Es un compromiso y responsabilidad que un estudiantes adquiere con la institución y Unidad de Investigación para colaborar con un proyecto asignado por una autoridad a cargo.",
"Es un compromiso y responsabilidad que un estudiante adquiere con la institución y Unidad Académica para complementar el aprendizaje de uno o varios cursos en una materia de su malla.",
"Es un compromiso y responsabilidad que un estudiante adquiere con la institución y Unidad de Gestión para desempeñar el cargo correspondiente en el ámbito administrativo.",
"1. Ingresar a https://www.academico.espol.edu.ec/, sección Ayudantías (solo disponible en periodo de registro).
2. Seleccionar el tipo de ayudantía (docencia, gestión, investigación).
Para saber si se ha aceptado el registro, revisar su correo electrónico.
Nota: Desde el 1er Término 2020 todas las ayudantías se desarrollarán bajo la modalidad de teletrabajo.
",
"1. Ingresar al link: www.academico.espol.edu.ec
2. En la parte superior derecha, dar clic en el símbolo con forma de casa y escoger la pestaña “Ayudantías”. (Solo disponible en el periodo de solicitud de ayudantías).
3. En el cuadro superior aparece la información con los requerimientos para aplicar la ayudantía. (Incluido el promedio de facultad).",
"Conectarse con el docente vía correo electrónico o con el coordinador de carrera para tener un mejor conocimiento de estos horarios.",
"existen dos tipos de practicas:
las practicas profesionales y,
las practicas comunitarias",
"son un tipo de pasantia pre-profesional no remunerada, en la cual se brinda apoyo o se crea un producto o servicio que ayude a la ciudadanía en el area que corresponde a la carrera del estudiante.",
"Para las practicas empresariales: Debes postular en las opciones disponibles de tu sistema académico en la seccion de practicas pre empresariales. También puedes conseguir una empresa por tu cuenta y comunicarlo al coordinador de prácticas preprofesionales.
Para las practicas comunitarias: Debes postular tambien en las opciones del sistema academico en la seccion de practicas comunitarias. Tambien es mejor si envias un correo directamente a tu coordinador de prácticas comunitarias solicitando un cupo.",
"Las pasantias las puedes realizar tanto durante el perido vacional (PAO) o durante el PAE, depende de las ofertas disponibles durante cada periodo",
"Si te toco estar o fuiste suplente en mesa electoral puedes convalidar esas 34 horas para las practicas de servicio comunitario, comunicate con el coordinador de practicas comunitarias y presenta los siguientes documentos:
-Certificado del CNE de haber finalizado con éxito la capacitación como miembro de la mesa electoral.
-fotografías del estudiante sentado en mesa
-fotografias del acta de escrutinio en la que se identifiquen las firmas de los miembros, la firma del estudiante y la fecha.
(las 34 horas correesponden a las horas de capacitación y al dia de las elecciones)",
"El informe de la pasantias lo proporciona tu tutor de las pasantias, en el debes colocar los datos de inicio y final de la pasantia, ¿cual fue tu experiencia?, tu conformidad con la empresa y que labores realizaste. "

);

insert into administracion values( 
"RECTORA
Ph.D. Cecilia Paredes Verduga
Presidenta del Consejo Politécnico

VICERRECTOR ACADÉMICO 
Ph.D. Paúl Herrera Samaniego

Ph.D. Katherine Rosero Barzola 
Secretaria Consejo Politécnico

DECANOS DEL CONSEJO POLITECNICO:
M.Sc. Marcos Mendoza Vélez
Facultad de Ciencias Naturales y Matemáticas	

M.Sc. María Elena Romero Montoya
Facultad de Ciencias Sociales y Humanísticas

Ph.D. Julia Nieto Wigby
Facultad de Ciencias de la Vida

Ph.D. Paola Romero Crespo
Facultad de Ciencias de la Tierra

Ph.D. Katherine Chiluiza García
Facultad de Electricidad y Computación 	

Ph.D. María del Pilar Cornejo Rodríguez
Facultad de Marítima y Ciencias del Mar

Ph.D. Ángel Ramírez Mosquera 
Facultad de Mecánica y Ciencias de la Producción	

Ph.D. Marcelo Báez
Facultad de Arte, Diseño y Comunicación Audiovisual

REPRESENTANTES DE INVESTIGADORES ACADEMICOS:
M.Sc. Hernando Sánchez Caicedo (Alterno) 
FCNM	

Ph.D. Washington Macías Rendón (Alterno)
FCSH 

Ph.D. Juan Manuel Cevallos Cevallos
FCV	

Ph.D. Mijail Arias Hidalgo 
FICT

M.Sc. Efrén Herrera Muentes
FIEC 	

Ph.D. Indira Nolivos Álvarez
FIMCBOR

M.Sc. Priscila Castillo Soto 
FIMCP 

M.Sc. María de los Ángeles Custoja Ripoll
UNIDADES DE DOCENCIA NO ADSCRITAS A FACULTADES

REPRESENTANTES ESTUDIANTILES:
Srta. Éricka Vásquez Cevallos
FIMCBOR	

Sr. Tommy Yépez Carrillo
FCNM

Srta. Josselyn Abarca Amoroso
FIMCP 	

Sr. Ronnie Arteaga Flores 
FICT

Sr. Héctor Marcillo Baque
REPRESENTANTES SERVIDORES Y TRABAJADORES
",
"El campus Gustavo Galindo está ubicado al noroeste de la ciudad de Guayaquil en el centro del Bosque Protector Prosperina. La entrada a esta ciudad universitaria se encuentra en el km. 30½ de la Vía Perimetral de la ciudad. Tiene una extensión total aproximada de 724 hectáreas.",
"El campus Peñas se encuentra ubicado en Malecon y Loja en la ciudad de Guayaquil. Si te mandan para allá no vayas ;)",
"Las aplicaciones utilizadas por la comunidad politécnica, han sido desarrollados por personal que labora en la Institución. Las diferentes aplicaciones están disponibles a través de la cuenta electrónica. Si eres un miembro activo de la ESPOL, solicita tu cuenta electrónica aquí. Dependiendo del rol que desempeñes en la Institución, los aplicativos se habilitarán para tu uso."
);



 