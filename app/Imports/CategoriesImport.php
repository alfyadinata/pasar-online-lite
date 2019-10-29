<?php

namespace App\Imports;

use App\Category;
use Maatwebsite\Excel\Concerns\ToModel;
class CategoriesImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Category([
            'name' => $row[0],
            'slug' => str_slug($row[0]),
            'is_product' => $row[1] == 1 ? 1 : 0 ,
        ]);
    }
}
