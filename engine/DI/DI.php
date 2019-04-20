<?php

namespace Engine\DI;

class DI {
  private $container = [];

  public function set($key, $value) {
    $this->container[$key] = $value;

    return $this;
  }  

  public function get($key) {
    return $this->has($key);
  }

  public function has($key) {
    return isset($this->container[$key]) ? $this->container[$key] : null; 
  }
  public function push($key, $element = [])
  {
      if ($this->has($key) !== null) {
          $this->set($key, []);
      }

      if (!empty($element)) {
          $pushElement = \stdClass::class;
          $this->container[$key][$element['key']] = $element['value'];
      }
  } 
}
