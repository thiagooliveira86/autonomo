<?php

App::uses('AppController', 'Controller');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class UsersController extends AppController{
    
    
    
    public function register(){
        
       $site_url = Configure::read('site_url');
       $webroot_url = Configure::read('webroot_url');
       $this->set("site_url", $site_url);
       $this->set("webroot_url", $webroot_url);
       $this->render('register', 'pages');
        
    }
    
    
    
}


?>
