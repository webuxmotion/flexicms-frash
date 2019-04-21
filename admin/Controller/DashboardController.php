<?php

namespace Admin\Controller;

use Admin\Model\User\UserRepository;

class DashboardController extends AdminController {
  public function index() {
    $this->load->model('User');

    $this->load->language('dashboard/main'); 

    $this->view->render('dashboard');
  }
}
