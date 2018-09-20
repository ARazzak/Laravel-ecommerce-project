@extends('layout')
@section('content')

<section id="cart_items">
		<div class="container">
			<div class="register-req">
				<p>Please Fillup this form</p>
			</div><!--/register-req-->

			<div class="shopper-informations">
				<div class="row">
					
					<div class="col-sm-12 clearfix">
						<div class="bill-to">
							<p>Bill To</p>
							<div class="form-one">
								<form action="{{url('/save-shipping-details')}}" method="post">
									{{ csrf_field() }}
									<input type="email" placeholder="Email" name="shipping_email">
									<input type="text" placeholder="First Name" name="shipping_first_name">
									<input type="text" placeholder="Last Name" name="shipping_last_name">
									<input type="text" placeholder="Address" name="shipping_address">
									<input type="text" placeholder="Mobile Number" name="shipping_mobile_number">
									<input type="text" placeholder="City" name="shipping_city">
									<input type="submit" class="btn btn-default" value="Done">
								</form>
							</div>
							
						</div>
					</div>
									
				</div>
			</div>
			
		</div>
	</section> <!--/#cart_items-->


@endsection