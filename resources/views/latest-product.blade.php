
<div class="new_arrivals">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="tabbed_container">
                    <div class="tabs clearfix tabs-right">
                        <div class="new_arrivals_title"> Terbaru </div>
                        <ul class="clearfix">
                            <li class="active">Produk</li>
                            <!-- <li>Audio &amp; Video</li> -->
                        </ul>
                        <div class="tabs_line"><span style="left: 674.087px; width: 72.05px;"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12" style="z-index:1;">
                            
                            <div class="product_panel panel active">
                                <div class="arrivals_slider slider">


                                    @foreach($products as $data)
                                    <!-- Slider Item -->
                                    <div class="arrivals_slider_item">
                                        <div class="border_active"></div>
                                        <div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                            <div class="product_image d-flex flex-column align-items-center justify-content-center" style="padding: 5px; width:150px;"><img src="{{ asset('images/'.$data->foto) }}" alt=""></div>
                                            <div class="product_content">
                                                <div class="product_price"style="">Rp. {{ number_format($data->price,0,'',',') }}.00</div>
                                                <div class="product_name"><div><a href="{{ route('showProduct',$data->slug) }}">{{ $data->name }}</a></div></div>
                                                <div class="product_extras">
                                                    <div class="product_color">
                                                        <input type="radio" checked name="product_color" style="background:#b19c83">
                                                        <input type="radio" name="product_color" style="background:#000000">
                                                        <input type="radio" name="product_color" style="background:#999999">
                                                    </div>
                                                    <a href="{{ route('showProduct',$data->slug) }}" class="btn btn-primary">Detail</a>
                                                </div>
                                            </div>
                                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                                            <ul class="product_marks">
                                                <li class="product_mark product_discount">-25%</li>
                                                <li class="product_mark product_new">new</li>
                                            </ul>
                                        </div>
                                    </div>
                                    @endforeach


                                </div>
                            </div>

                        </div>
                    </div>
                            
                </div>
            </div>
        </div>
    </div>		
</div>