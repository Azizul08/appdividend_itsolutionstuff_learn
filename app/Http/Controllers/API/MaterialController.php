<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Material;
use Validator;
use App\Http\Resources\Material as MaterialResource;

class MaterialController extends BaseController
{
    public function index()
    {
        $products = Material::all();

        return $this->sendResponse(MaterialResource::collection($products), 'Products retrieved successfully.');
    }

    public function store(Request $request)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'name' => 'required',
            'detail' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product = Material::create($input);

        return $this->sendResponse(new MaterialResource($product), 'Product created successfully.');
    }

    public function show($id)
    {
        $product = Material::find($id);

        if (is_null($product)) {
            return $this->sendError('Product not found.');
        }

        return $this->sendResponse(new MaterialResource($product), 'Product retrieved successfully.');
    }

    public function update(Request $request, Material $product)
    {
        $input = $request->all();

        $validator = Validator::make($input, [
            'name' => 'required',
            'detail' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product->name = $input['name'];
        $product->detail = $input['detail'];
        $product->save();

        return $this->sendResponse(new MaterialResource($product), 'Product updated successfully.');
    }

    public function destroy(Material $product)
    {
        $product->delete();

        return $this->sendResponse([], 'Product deleted successfully.');
    }
}
