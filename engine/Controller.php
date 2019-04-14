<?php

namespace Engine;

use Engine\DI\DI;

abstract class Controller {
  protected $di;

  public function __construct(DI $di) {
    $this->di = $di;     
  }
}
