<?php
// Charger l'autoloader de Composer
require 'autoload.php';

$faker = Faker\Factory::create('fr_FR');

// Connexion à la base de données
$host = 'localhost';
$db = 'mapping_projet';
$user = 'black';
$pass = 'black';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    throw new \PDOException($e->getMessage(), (int)$e->getCode());
}



// Noms des services
$nomsServices = [
    "station", "hotel", "restaurant", "cinema", "chute d'eau",
    "ecole", "formation", "cybercafé", "laverie", "autre"
];

// Insérer des données factices dans la table `service`
$serviceStmt = $pdo->prepare("INSERT INTO service (nom_service) VALUES (?)");

foreach ($nomsServices as $nomService) {
    $serviceStmt->execute([$nomService]);
}

// Récupérer tous les IDs des services
$services = $pdo->query("SELECT idsv FROM service")->fetchAll(PDO::FETCH_COLUMN);

// Insérer des données factices dans la table `client`
$clientStmt = $pdo->prepare("INSERT INTO client (contact, liensite, nomstructure, idsv, email, longitude, latitude, ville, datecreation) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

for ($i = 0; $i < 50; $i++) {
    $contact = $faker->phoneNumber;
    $liensite = $faker->url;
    $nomstructure = $faker->company;
    $idsv = $faker->randomElement($services);
    $email = $faker->unique()->email;
    $longitude = $faker->longitude;
    $latitude = $faker->latitude;
    $ville = $faker->city;
    $datecreation = $faker->date('Y-m-d');

    $clientStmt->execute([$contact, $liensite, $nomstructure, $idsv, $email, $longitude, $latitude, $ville, $datecreation]);
}

echo "Données factices générées avec succès.";
?>
