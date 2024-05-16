CREATE TABLE componentes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo TEXT NOT NULL,
    marca TEXT NOT NULL,
    modelo TEXT NOT NULL,
    especificaciones TEXT NOT NULL
);

INSERT INTO componentes (tipo, marca, modelo, especificaciones) VALUES 
    ('CPU', 'Intel', 'i3-7100', '{"nucleos": 2, "frecuencia": 3.9, "tdp": 51}'),
    ('CPU', 'Intel', 'i5-8400', '{"nucleos": 6, "frecuencia": 2.8, "tdp": 65}'),
    ('CPU', 'Intel', 'i7-9700K', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 95}'),
    ('CPU', 'Intel', 'i9-9900K', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 95}'),
    ('CPU', 'AMD', 'Ryzen 3 3200G', '{"nucleos": 4, "frecuencia": 3.6, "tdp": 65}'),
    ('CPU', 'AMD', 'Ryzen 5 3600', '{"nucleos": 6, "frecuencia": 3.6, "tdp": 65}'),
    ('CPU', 'AMD', 'Ryzen 7 3700X', '{"nucleos": 8, "frecuencia": 3.6, "tdp": 65}'),
    ('CPU', 'AMD', 'Ryzen 9 3900X', '{"nucleos": 12, "frecuencia": 3.8, "tdp": 105}'),
    ('CPU', 'Intel', 'i3-11100F', '{"nucleos": 4, "frecuencia": 4.5, "tdp": 65}'),
    ('CPU', 'Intel', 'i5-11400', '{"nucleos": 6, "frecuencia": 4.4, "tdp": 65}');

INSERT INTO componentes (tipo, marca, modelo, especificaciones) VALUES 
    ('GPU', 'NVIDIA', 'GTX 1660', '{"tfLOPS": 5, "vram": 6}'),
    ('GPU', 'NVIDIA', 'RTX 2070', '{"tfLOPS": 7.5, "vram": 8}'),
    ('GPU', 'NVIDIA', 'RTX 3080', '{"tfLOPS": 29.7, "vram": 10}'),
    ('GPU', 'AMD', 'RX 5700 XT', '{"tfLOPS": 9.75, "vram": 8}'),
    ('GPU', 'AMD', 'RX 6800', '{"tfLOPS": 16.17, "vram": 16}'),
    ('GPU', 'AMD', 'RX 6900 XT', '{"tfLOPS": 23.04, "vram": 16}'),
    ('GPU', 'NVIDIA', 'GTX 1050', '{"tfLOPS": 1.862, "vram": 2}'),
    ('GPU', 'NVIDIA', 'RTX 3060', '{"tfLOPS": 13.181, "vram": 12}'),
    ('GPU', 'AMD', 'RX 6600 XT', '{"tfLOPS": 10.61, "vram": 8}'),
    ('GPU', 'AMD', 'RX 6900 XT', '{"tfLOPS": 23.04, "vram": 16}');

INSERT INTO componentes (tipo, marca, modelo, especificaciones) VALUES 
    ('RAM', 'Corsair', 'Vengeance LPX 16GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 16}'),
    ('RAM', 'G.Skill', 'Ripjaws V Series 32GB DDR4 3600MHz', '{"frecuencia": 3600, "capacidad": 32}'),
    ('RAM', 'Kingston', 'HyperX Fury 8GB DDR4 2666MHz', '{"frecuencia": 2666, "capacidad": 8}'),
    ('RAM', 'Crucial', 'Ballistix 64GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 64}'),
    ('RAM', 'Corsair', 'Vengeance RGB Pro 32GB DDR4 3600MHz', '{"frecuencia": 3600, "capacidad": 32}'),
    ('RAM', 'Kingston', 'HyperX Predator 16GB DDR4 4000MHz', '{"frecuencia": 4000, "capacidad": 16}'),
    ('RAM', 'G.Skill', 'Trident Z RGB 32GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 32}'),
    ('RAM', 'Corsair', 'Vengeance LPX 8GB DDR4 3000MHz', '{"frecuencia": 3000, "capacidad": 8}'),
    ('RAM', 'Crucial', 'Ballistix 16GB DDR4 3600MHz', '{"frecuencia": 3600, "capacidad": 16}'),
    ('RAM', 'Kingston', 'HyperX Fury 32GB DDR4 3200MHz', '{"frecuencia": 3200, "capacidad": 32}');
