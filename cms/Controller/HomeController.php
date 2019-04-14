<?php

namespace Cms\Controller;

class HomeController extends CmsController {
  
  public function index() {
    $data = ['name' => 'Test'];
    $this->view->render('index', $data);
  }

  public function news($id = 'default') {
    echo $id;
  }
}
