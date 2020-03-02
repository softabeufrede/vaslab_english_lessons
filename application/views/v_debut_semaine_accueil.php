<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><?xml version="1.0" encoding="UTF-8"?><!DOCTYPE html>
<html lang="fr">
<body>



<?php  if(isset($offre_periode)){?>

<h1>Pour cette offre,vous serez facturé de 103 FCFA. Vous aurez droit à 7 jours de cours d’anglais.</h1>
      <a href="<?php echo base_url() ?>offre/debutant/semaine/confirme">Confirmer</a><br/>
      <a href="<?php echo base_url() ?>">Annuler</a><br/>
      <a href="<?php echo base_url() ?>offre/debutant">Retour</a><br/>
	<a href="<?php echo base_url() ?>">Accueil</a><br/>
<?php } else{?>
	<h1>Cher client, vous commencez les cours d’anglais avec le niveau débutant.
Veuillez choisir votre offre</h1>
	<a href="<?php echo base_url() ?>offre/debutant/semaine">Semaine</a><br/>
      <a href="<?php echo base_url() ?>offre/debutant/mois">Mois</a><br/>
      <a href="<?php echo base_url() ?>offre/debutant/semaine">Retour</a><br/>
	<a href="<?php echo base_url() ?>offre/debutant/semaine">Accueil</a><br/>
	<?php } ?>

</body>
</html>
