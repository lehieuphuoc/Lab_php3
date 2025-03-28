<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LoaiSpSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('loaisp')->insert([ 
            ['tenLoai' => 'Sam sung', 'thuTu'=>1, 'anHien' =>1], 
            ['tenLoai' => 'HTC', 'thuTu' =>2, 'anHien' =>1], 
            ['tenLoai'=>'Apple', 'thuTu' =>3, 'anHien' =>1], 
            ['tenLoai'=>'LG', 'thuTu' =>4, 'anHien' =>1], 
            ['tenLoai' => 'Motorola', 'thuTu'=>5, 'anHien' =>1], 
            ['tenLoai'=>'Mobel', 'thuTu' =>6, 'anHien' =>0], 
        ]);
    }
}