<?php

namespace Admin\Controller;

use Admin\Model\User\UserRepository;

class DashboardController extends AdminController {
  public function index() {
    $this->load->model('User');

    $this->model->user->test();
    
    $this->view->render('dashboard');
  }
}
