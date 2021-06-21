<?php

namespace App\Imports;

use App\Models\Talent;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Carbon\Carbon;

class TalentImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Talent([
                'id_talent'             => $row['no'],
                'player_experience'     => $row['player_experience'],
                'skill'                 => $row['skill'],
                'intellegence'          => $row['intellegence'],
                'attitude'              => $row['attitude'],
                'turnamen'              => $row['turnamen'],
                'target'                => $row['target'],
                'created_at'            => Carbon::now(),
                'updated_at'            => Carbon::now(),
          
        ]);
    }
}
