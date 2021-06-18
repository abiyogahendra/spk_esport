<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginValidation extends FormRequest
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
              'data_talent' => 'required|email',
        ];
    }
    public function messages(){
        return [
            'email.required' => 'Masukkan Email',
            'email.email' => 'Pastikan Email Yang Dimasukkan Benar',
            'password.required' => 'Masukkan Password',
        ];
    }
}