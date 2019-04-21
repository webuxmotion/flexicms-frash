<?php

namespace Admin\Controller;

use Engine\Controller;
use Engine\Core\Auth\Auth;

class AdminController extends Controller {

  protected $auth;

  public $data = [];

  public function __construct($di) {
    parent::__construct($di);

    $this->auth = new Auth();

    $this->checkAuthorization(); 
    if (isset($this->request->get['logout'])) {
      if ($this->request->get['logout'] == 1) {
        $this->auth->unAuthorize();
      }
    }

    // Load global language
    $this->load->language('dashboard/menu');
  } 

  public function checkAuthorization() {
    
  }

  public function logout() {
    $this->auth->unAuthorize();
    header('Location: /admin/login/');        
    exit;
  }
}
