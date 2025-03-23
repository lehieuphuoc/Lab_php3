<h1>Trang San Pham</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
    </tr>
    @foreach($products as $product)
    <tr>
        <td>{{$product['name']}}</td>
        <td>{{$product['price']}}</td>
    </tr>
    @endforeach
</table>