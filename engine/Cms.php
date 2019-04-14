<?php 

namespace Engine;

use Engine\Helper\Common;
use Engine\Core\Router\DispatchedRoute;

class Cms {
  private $di;

  public $router;

  public function __construct($di) {
    $this->di = $di;  
    $this->router = $this->di->get('router');
  } 

  public function run() {
    try {
      $this->router->add('home', '/', 'HomeController:index');
      $this->router->add('news', '/news', 'HomeController:news');
      $this->router->add('news-single', '/news/(id:int)', 'HomeController:news');
       
      $routerDispatch = $this->router->dispatch(Common::getMethod(), Common::getPathUrl());

      if ($routerDispatch == null) {
        $routerDispatch = new DispatchedRoute('ErrorController:page404');
      }

      list($class, $action) = explode(':', $routerDispatch->getController(), 2);

      $controller = '\\Cms\\Controller\\' . $class;
      $parameters = $routerDispatch->getParameters(); 

      call_user_func_array([new $controller($this->di), $action], $parameters);
      
    } catch (\Exception $e) {
      echo $e->getMessate();
      exit;
    }
  }
}
