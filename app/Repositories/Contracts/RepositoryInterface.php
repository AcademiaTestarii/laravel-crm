<?php

namespace App\Repositories\Contracts;

interface RepositoryInterface
{
    /**
     * @param array $data
     * @return mixed
     */
    public function create(array $data);

    /**
     * @param string $column
     * @param string $order
     * @return mixed
     */
    public function allOrderedBy(string $column, string $order = 'ASC');

    /**
     * @param $id
     * @return mixed
     */
    public function show($id);

    /**
     * @param array $criteria
     * @return mixed
     */
    public function findOneBy(array $criteria);

    /**
     * @param array $data
     * @return mixed
     */
    public function findOrCreate(array $data);

    /**
     * @param array $matchingData
     * @param array $data
     * @return mixed
     */
    public function updateOrCreate(array $matchingData, array $data);

    /**
     * @param array $criteria
     * @return mixed
     */
    public function findAllBy(array $criteria);
}
