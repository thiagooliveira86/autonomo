<?php
/**
 *
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = __d('cake_dev', 'CakePHP: the rapid development php framework');
?>
<!DOCTYPE html>
<html>
    
       <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
                
                echo $this->Html->css('bootstrap.min');
                echo $this->Html->css('bootstrap-theme');
                echo $this->Html->css('style');
                echo $this->Html->script('jquery1.8.min');
                echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
 
</head>
<body>
	<div id="container">
            
            
            <div id="header">
                
             <?php echo $this->element('home_header_pages'); ?>
                
            </div>
            

		<div id="content">

			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
		</div>

	</div>

</body>
</html>
