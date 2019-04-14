<?php

namespace Engine\Core\Database;
use \PDO;

class Connection {
    private $link;
    /**
     * Connection constructor.
     */
    public function __construct()
    {
        $this->connect();
    }
    /**
     * @return $this
     */
    private function connect()
    {
        $config = [
          'host' => 'localhost',
          'db_name' => 'test',
          'username' => 'root',
          'password' => '1111',
          'charset' => 'utf8'
        ];
        $dsn = 'mysql:host=' .$config['host'] .';dbname=' .$config['db_name'] .';charset=' .$config['charset'];
        $this->link = new PDO($dsn, $config['username'], $config['password']);
        return $this;
    }
    /**
     * @param $sql
     * @param array $values
     * @return mixed
     */
    public function execute($sql, $values = [])
    {
        $sth = $this->link->prepare($sql);
        return $sth->execute($values);
    }
    /**
     * @param $sql
     * @param array $values
     * @param int $statement
     * @return array
     */
    public function query($sql, $values = [], $statement = PDO::FETCH_OBJ)
    {
        $sth = $this->link->prepare($sql);
        $sth->execute($values);
        $result = $sth->fetchAll($statement);
        if($result === false){
            return [];
        }
        return $result;
    }
    /**
     * @return int
     */
    public function lastInsertId()
    {
        return $this->link->lastInsertId();
    }
}
