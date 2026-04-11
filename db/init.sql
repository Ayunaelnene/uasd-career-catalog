CREATE DATABASE IF NOT EXISTS uasd_catalog;
USE uasd_catalog;

-- 1. Tabla de Facultades
CREATE TABLE facultades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- 2. Tabla de Escuelas
CREATE TABLE escuelas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    facultad_id INT,
    FOREIGN KEY (facultad_id) REFERENCES facultades(id) ON DELETE CASCADE
);

-- 3. Tabla de Carreras
CREATE TABLE carreras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_plan VARCHAR(20),
    nombre VARCHAR(255) NOT NULL,
    escuela_id INT,
    FOREIGN KEY (escuela_id) REFERENCES escuelas(id) ON DELETE CASCADE
);

-- Inserción de datos
INSERT INTO facultades (nombre) VALUES ('Facultad de Artes'), ('Facultad de Ciencias'), ('Facultad de Ciencias Economicas y Sociales'), ('Facultad de Ciencias Juridicas y Politicas'), ('Facultad de Ciencias de la Educación'), ('Facultad de Ciencias de la Salud'), ('Facultad de Cs. Agronimicas y Veterinarias'), ('Facultad de Humanidades'), ('Facultad de Ingenieria y Arquitectura');

-- Escuelas de Artes
INSERT INTO escuelas (nombre, facultad_id) VALUES 
('Escuela de Artes Plásticas', 1),
('Escuela de Cine, TV y Fotografía', 1),
('Escuela de Critica e Historia del Arte', 1),
('Escuela de Diseño Industrial y Modas', 1),
('Escuela de Música', 1),
('Escuela de Publicidad', 1),
('Escuela de Teatro', 1);

-- Escuelas de Ciencias
INSERT INTO escuelas (nombre, facultad_id) VALUES 
('Escuela de Biología', 2),
('Escuela de Ciencias Geograficas', 2),
('Escuela de Física', 2),
('Escuela de Informática', 2),
('Escuela de Matemáticas', 2),
('Escuela de Microbiología y Parasitología', 2),
('Escuela de Química', 2);

-- Escuelas de Ciencias Económicas y Sociales
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Administración', 3),
('Escuela de Contabilidad', 3),
('Escuela de Economía', 3),
('Escuela de Estadística', 3),
('Escuela de Mercadotecnia', 3),
('Escuela de Sociología', 3),
('Escuela de Turismo y Hotelería', 3);

-- Escuelas de Ciencias Jurídicas y Políticas
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Ciencias Políticas', 4),
('Escuela de Derecho', 4);

-- Escuelas de Ciencias de la Educación
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Bibliotecología, Tecn e Innova', 5),
('Escuela de Educación Física y Cs del Depo', 5),
('Escuela de Educación Infantil y Básica', 5),
('Escuela de Educación Media', 5),
('Escuela de Orientación Educativa y Psicop', 5),
('Escuela de Teoría y Gestión Educativa', 5);

-- Escuelas de Ciencias de la Salud
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Bioanálisis', 6),
('Escuela de Enfermería', 6),
('Escuela de Farmacia', 6),
('Escuela de Medicina', 6),
('Escuela de Odontología', 6),
('Escuela de Salud Pública', 6);

-- Escuelas de Ciencias Agronómicas y Veterinarias
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Agronomía', 7),
('Escuela de Veterinaria', 7),
('Escuela de Zootecnia', 7);

-- Escuelas de Humanidades
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Comunicación Social', 8),
('Escuela de Filosofía', 8),
('Escuela de Historia y Antropología', 8),
('Escuela de Idiomas', 8),
('Escuela de Letras', 8),
('Escuela de Psicología', 8);

-- Escuelas de Ingeniería y Arquitectura
INSERT INTO escuelas (nombre, facultad_id) VALUES
('Escuela de Agrimensura', 9),
('Escuela de Arquitectura', 9),
('Escuela de Electromecánica', 9),
('Escuela de Ingeniería Civil', 9),
('Escuela de Ingeniería Industrial', 9),
('Escuela de Ingeniería Química', 9);

-- Carreras
INSERT INTO carreras (codigo_plan, nombre, escuela_id) VALUES 
-- Carreras de la Escuela de Artes Plásticas
('P-APLA', 'Licenciatura en Artes Plásticas', 1),
('P-ARPE', 'Licenciatura en Artes Plásticas Mención Escultura', 1),
('P-ARPP', 'Licenciatura en Artes Plásticas Mención Pintura', 1),
-- Carreras de la Escuela de Cine, TV y Fotografía
('P-CINC', 'Lic en Cinematografía y Audiovisuales Mención Cine', 2),
('P-CINT', 'Lic en Cinematografía y Audiovisuales Mención Televisión', 2),
('P-FOTA', 'Técnico en Fotografía y Medios Audiovisuales', 2),
-- Carreras de la Escuela de Crítica e Historia del Arte
('P-HISA', 'Licenciatura en Historia y Critica Del Arte', 3),
-- Carreras de la Escuela de Diseño Industrial y Modas
('P-AIDA', 'Licenciatura en Artes Industriales Menc Diseño Artesanal', 4),
('P-AIDI', 'Licenciatura en Artes Industriales Mención Diseño Indust', 4),
('P-AIDM', 'Licenciatura en Artes Industriales Menc Diseño de Modas', 4),
-- Carreras de la Escuela de Música
('P-MUS', 'Licenciatura en Música', 5),
('P-MUST', 'Licenciatura en Música Mención Teoría y Educ. Musical', 5),
-- Carreras de la Escuela de Publicidad
('P-ARPD', 'Licenciatura en Publicidad Mención Diseño', 6),
('P-ARPI', 'Licenciatura en Publicidad Mención Ilustración', 6),
('P-PUBC', 'Licenciatura en Publicidad Menc Creatividad y Gerencia', 6),
-- Carreras de la Escuela de Teatro
('P-TEA', 'Licenciatura en Teatro', 7),
('P-TEAA', 'Licenciatura en Teatro Mención Actuación', 7),
('P-TEAI', 'Licenciatura en Teatro Mención Dirección', 7),
('P-TEDR', 'Licenciatura en Teatro Mención Dramaturgia', 7),
-- Carreras de la Escuela de Biología
('P-LBIO', 'Licenciatura en Biología', 8),
-- Carreras de la Escuela de Ciencias Geográficas
('P-GEOG', 'Licenciatura en Geografía', 9),
('P-GEOR', 'Licenciatura en Geografía Mención Represent Espacial', 9),
('P-LGEO', 'Licenciatura en Geografía, Conser de Rec Naturales y Ecotur', 9),
-- Carreras de la Escuela de Física
('P-FIS', 'Licenciatura en Física', 10),
('P-FISI', 'Licenciatura en Física Mención Física Aplicada', 10),
('P-FISL', 'Licenciatura en Física Mención Física Teórica', 10),
-- Carreras de la Escuela de Informática
('P-LINF', 'Licenciatura en Informática', 11),
-- Carreras de la Escuela de Matemáticas
('P-LMAT', 'Licenciatura en Matemáticas', 12),
-- Carreras de la Escuela de Microbiología y Parasitología
('P-LMIC', 'Licenciatura en Microbiología', 13),
-- Carreras de la Escuela de Química
('P-LQUI', 'Licenciatura en Química', 14),
('P-TCTA', 'Licenciatura en Ciencia y Tecnología de Alimentos', 14),
('P-TSAL', 'Tecnólogo Superior en Alimentos', 14),
-- Carreras de la Escuela de Administración
('P-APTS', 'Técnico Superior en Administración Pública', 15),
('P-LADM', 'Licenciatura en Administración de Empresas', 15),
('P-LAPU', 'Licenciatura en Administración Pública', 15),
('P-TSSM', 'Técnico Superior en Servicios y Gestión Municipal', 15),
-- Carreras de la Escuela de Contabilidad
('P-LCON', 'Licenciatura en Contabilidad', 16),
-- Carreras de la Escuela de Economía
('P-ADCE', 'Licenciatura en Aduana y Comercio Exterior', 17),
('P-ADCE', 'Licenciatura en Aduana y Comercio Exterior', 17),
('P-LACE', 'Licenciatura en Comercio Exterior y Aduanas', 17),
('P-LECO', 'Licenciatura en Economía', 17),
-- Carreras de la Escuela de Estadística
('P-LECD', 'Licenciatura en Estadística y Ciencia de Datos', 18),
-- Carreras de la Escuela de Mercadotecnia
('P-LMER', 'Licenciatura en Mercadotecnia', 19),
-- Carreras de la Escuela de Sociología
('P-LSOC', 'Licenciatura en Sociología', 20),
('P-LTRS', 'Licenciatura en Trabajo Social', 20),
-- Carreras de la Escuela de Turismo y Hotelería
('P-LTUH', 'Licenciatura en Turismo y Hotelería', 21),
('P-TSGA', 'Técnico Superior en Gestión de Alojamiento Turístico', 21),
('P-TSGT', 'Técnico Superior en Guianza Turística', 21),
-- Escuela de Ciencias Políticas
('P-CSPO', 'Licenciatura en Ciencias Políticas', 22),
-- Escuela de Derecho
('P-DERE', 'Licenciatura en Derecho', 23),
-- Escuela de Bibliotecología, Tecn e Innova
('P-BCIN', 'Licenciatura en Bibliotecología y Ciencias de la Información', 24),
('P-EDBI', 'Licenciatura en Educación Mención Bibliotecología', 24),
('P-EMIE', 'Licenciatura en Educación Mención Informática Educativa', 24),
-- Escuela de Educación Física y Cs del Depo
('P-EDFD', 'Licenciatura en Educación Física y Deporte', 25),
('P-EDFI', 'Licenciatura en Educación Física', 25),
-- Escuela de Educación Infantil y Básica
('P-EDBA', 'Licenciatura en Educación Básica', 26),
('P-EDIN', 'Licenciatura en Educación Infantil', 26),
('P-EDUB', 'Licenciatura en Educación Básica', 26),
('P-EDUI', 'Licenciatura en Educación Inicial', 26),
('P-EMAE', 'Licenciatura en Educación Mención Arte Escolar', 26),

-- Escuela de Educación Media
('P-CEFR', 'Certificado ESE Francés', 27),
('P-CEIN', 'Certificado ESE Inglés', 27),
('P-EDFF', 'Licenciatura en Educación Mención Filosofía y Letras', 27),
('P-EMBQ', 'Licenciatura en Educación Media Mención Biología y Química', 27),
('P-EMCS', 'Licenciatura en Educación Media Mención Ciencias Sociales', 27),
('P-EMFM', 'Licenciatura en Educación Media Mención Física y Matemáticas', 27),
('P-EMMF', 'Licenciatura en Educación Media Mención Francés', 27),
('P-EMMI', 'Licenciatura en Educación Media Mención Inglés', 27),
('P-EMML', 'Licenciatura en Educación Media Mención Letras', 27),
-- Escuela de Orientación Educativa y Psicop
('P-EDES', 'Licenciatura en Educación Especial', 28),
('P-EDOA', 'Licenciatura en Educación Mención Orientación Académica', 28),
('P-EDOC', 'Licenciatura en Educación Menc Orient Socio-Comunitaria', 28),
('P-EDOR', 'Lic en Educ. Menc Orient Para El Des de Rec Humanos', 28),
('P-EMOP', 'Licenciatura en Educación Mención Orientación Psicopedagógic', 28),
-- Escuela de Teoría y Gestión Educativa
('P-EMGE', 'Licenciatura en Educación Mención Gestión Educativa', 29),
('P-EPJA', 'Licenciatura en Educación para Personas Jóvenes y Adultas', 29),
-- Escuela de Bioanálisis 
('P-BIOA', 'Licenciatura en Bioanálisis', 30),
('P-IMAG', 'Licenciatura en Imagenología', 30),
('P-TRAD', 'Técnico Radiólogo', 30),

-- Escuela de Enfermería 
('P-ENF1', 'Licenciatura en Enfermería', 31),
('P-ENFE', 'Licenciatura en Enfermería', 31),

-- Escuela de Farmacia
('P-FARM', 'Licenciatura en Farmacia', 32),
('P-TSFA', 'Técnico Superior en Farmacia', 32),

-- Escuela de Medicina 
('P-DMED', 'Doctor en Medicina', 33),
('P-PMED', 'Pre-Médica/Medicina', 33),
('P-PMED', 'Pre-Médica/Medicina', 33),

-- Escuela de Odontología 
('P-CODO', 'Doctor en Odontología', 34),

-- Escuela de Salud Pública 
('P-TSAP', 'Técnico Superior en Atención Pre-hospitalaria', 35),
-- Escuela de Agronomía 
('P-IADA', 'Ingeniería Agronómica-Mención Desarrollo Agrícola', 36),
('P-IAPC', 'Ingeniería Agronómica-Mención Producción de Cultivos', 36),
('P-IASR', 'Ingeniería Agronómica-Mención Suelo y Riego', 36),

-- Escuela de Veterinaria 
('P-MEDV', 'Licenciatura en Medicina Veterinaria', 37),

-- Escuela de Zootecnia 
('P-ILAL', 'Ingeniería Lácteo Alimentaria', 38),
('P-IZOO', 'Ingeniería en Zootecnia', 38),
('P-TPLA', 'Tecnología en Procesos Lácteo Alimentarios', 38),
-- Escuela de Comunicación Social 
('P-CSCG', 'Licenciatura en Com Social Mención Comunicación Grafica', 39),
('P-CSPE', 'Licenciatura en Com Social Mención Periodismo', 39),
('P-CSRP', 'Licenciatura en Com Social Mención Relaciones Publicas', 39),

-- Escuela de Filosofía 
('P-FILO', 'Licenciatura en Filosofía', 40),

-- Escuela de Historia y Antropología 
('P-ANTR', 'Licenciatura en Antropología', 41),
('P-HIST', 'Licenciatura en Historia', 41),

-- Escuela de Idiomas 
('P-LEMF', 'Licenciatura en Lenguas Modernas Mención Francés', 42),
('P-LEMI', 'Licenciatura en Lenguas Modernas Mención Inglés', 42),

-- Escuela de Letras 
('P-LET', 'Licenciatura en Letras', 43),

-- Escuela de Psicología 
('P-LPDH', 'Licenciatura en Psicología de Desarrollo Humano', 44),
('P-LPSC', 'Licenciatura en Psicología Clínica', 44),
('P-LPSE', 'Licenciatura en Psicología Educativa', 44),
('P-LPSO', 'Licenciatura en Psicología Organizacional', 44),
('P-LPSS', 'Licenciatura en Psicología Social', 44),
-- Escuela de Agrimensura 
('P-AGRI', 'Agrimensura', 45),
('P-IGEO', 'Ingeniería Geomática', 45),
('P-LAGE', 'Licenciatura en Agrimensura', 45),
('P-LAGM', 'Licenciatura en Agrimensura', 45),
('P-LAGP', 'Licenciatura en Agrimensura', 45),
('P-TAGM', 'Técnico Superior en Agrimensura', 45),

-- Escuela de Arquitectura 
('P-ARQ', 'Arquitectura', 46),

-- Escuela de Electromecánica 
('P-IEME', 'Ingeniería Electromecánica Mención Eléctrica', 47),
('P-IEMM', 'Ingeniería Electromecánica Mención Mecánica', 47),
('P-IEMT', 'Ingeniería Electromecánica Mención Electrónica', 47),

-- Escuela de Ingeniería Civil 
('P-ICIV', 'Ingeniería Civil', 48),

-- Escuela de Ingeniería Industrial 
('P-IIND', 'Ingeniería Industrial', 49),

-- Escuela de Ingeniería Química 
('P-IQUI', 'Ingeniería Química', 50);