<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class HTTPTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        $response = $this->get('/status');
        $response->assertStatus(200);

        //$response = $this->get('/getdata');
        //$response->assertJson(['website' => 'AppDividend']);
    }
}
