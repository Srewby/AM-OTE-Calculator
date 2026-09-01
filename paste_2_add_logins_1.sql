INSERT INTO users (id, email, password, role, name) VALUES
  (gen_random_uuid()::text, 'steven.ouellette@beagleforpm.com', '$2b$10$Aq/4CJLMGcLVyyp4gZws8.BtKBnPse2C6CkYjSS2WBH6r8ussaa8S', 'ADMIN', 'Steven Ouellette'),
  (gen_random_uuid()::text, 'enzo@beagleforpm.com', '$2b$10$gWXvezmplZTQcUx/VSYE/eI.awJ1kwQTTRQvwWiDBxq6lFbAuRdx.', 'ADMIN', 'Enzo'),
  (gen_random_uuid()::text, 'musarrat@beagleforpm.com', '$2b$10$yPMWqVsaEE8nxaufP3jaNeNFGePB3L6SYJ08MsUnatdWC1SixWE/i', 'ADMIN', 'Musarrat'),
  (gen_random_uuid()::text, 'bryce@beagleforpm.com', '$2b$10$5C4VHaFS0NVMQL0xuSXwiusmh27oOQRhZZDEf6wfN/QG09VG4PWnm', 'ADMIN', 'Bryce'),
  (gen_random_uuid()::text, 'anthony@beagleforpm.com', '$2b$10$Tj0k4CNX2MbNAQyLupvtheW8T3zn/kiKdB7tD.gQwpbaL1XbpaFQa', 'ADMIN', 'Anthony'),
  (gen_random_uuid()::text, 'bryce.brodner@beagleforpm.com', '$2b$10$3ndAjmGukaz5YXsdR719jeu7wGWvNGvMeeHHSsredEDheGghIP20C', 'ADMIN', 'Bryce Brodner'),
  (gen_random_uuid()::text, 'walt.boxwell@beagleforpm.com', '$2b$10$fVeH0uxG5rS3dgQkBDjzTeAcgvS0CFI6JoTRKpHShOKD8pAIESCM2', 'AM', 'Walt Boxwell'),
  (gen_random_uuid()::text, 'adam.szymanski@beagleforpm.com', '$2b$10$5GVQ7BlMx9rAN4ymerCjLOeOg5V1I7yTexbPNF9kpcGjnCugAEedG', 'AM', 'Adam Szymanski'),
  (gen_random_uuid()::text, 'kashvi.chaudhary@beagleforpm.com', '$2b$10$7TZShygiE8ZeciDUKR7/hO6wb2GwTFTBwp74kKy3FHetHnzBorrxW', 'AM', 'Kashvi Chaudhary'),
  (gen_random_uuid()::text, 'eleanor.scott@beagleforpm.com', '$2b$10$G59kCBNaIGsAlOAUqfJ/XuZFUemMiUUWL9haFgW9Vxogq8LP9y98S', 'AM', 'Eleanor Scott'),
  (gen_random_uuid()::text, 'benjamin.vivers@beagleforpm.com', '$2b$10$TCXt7sQ1temxgBkbJycCOOD/WzgNW4PszGsjAbbWSK3YLh/6rO2B.', 'AM', 'Benjamin Vivers')
ON CONFLICT (email) DO NOTHING;
