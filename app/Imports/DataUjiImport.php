<?php

namespace App\Imports;

use App\Models\DataUji;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Carbon\Carbon;

class DataUjiImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new DataUji([
                'id_talent'             => $row['no'],
                'player_experience'     => $row['player_experience'],
                'skill'                 => $row['skill'],
                'intellegence'          => $row['intellegence'],
                'attitude'              => $row['attitude'],
                'turnamen'              => $row['turnamen'],
                'created_at'            => Carbon::now(),
                'updated_at'            => Carbon::now(),
          
        ]);
    }
}
