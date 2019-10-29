<?php

namespace App\Exports;

use App\Category;
use Maatwebsite\Excel\Concerns\FromCollection;
use DB;

class CategoriesExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $data   =   DB::table('categories')->select('name','is_product')->where('deleted_at',null)->get();
        return $data;
    }
}
