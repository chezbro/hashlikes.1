# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(function(){
  $("#stripe-button").click()
  })
     <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                    data-key="<%= ENV["HASHLIKES_TEST_PUBLISHABLE_KEY"] %>"
                    data-description="One Month Subscription"
                    data-amount="999"></script>
