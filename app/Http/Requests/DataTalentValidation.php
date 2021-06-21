<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class DataTalentValidation extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
              'data_talent' => 'required|mimetypes:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        ];
    }
    public function messages(){
        return [
            'data_talent.required' => 'Masukkan Dataset',
            'data_talent.mimetypes' => 'File Harus Excel berekstensi .xlsx',
        ];
    }
}
