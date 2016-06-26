function SubmitForm(domElements) {
  this.formElements = domElements.inputField;
  this.submitBtn = domElements.btn;
  this.url = this.submitBtn.data('url');
  this.data = {};
}

SubmitForm.prototype.sendOrderData = function() {
  var _this = this;
  var objectData = this.data;
  this.data = {'order' : objectData};
  $.ajax({
    type: "PUT",
    url: _this.url,
    data: _this.data
  });
};

SubmitForm.prototype.validateFormFields = function() {
  var _this = this;
  var isValid = true;
  this.formElements.each(function() {
    _this.data.buyer_id = this.value;
    if(!Boolean(this.value.trim())) {
      alert('Please Insert Required Fields.');
      isValid = false;
    }
  });
  return isValid;
};

SubmitForm.prototype.bindEvents = function() {
  var _this = this;
  this.submitBtn.on('click', function() {
    if(confirm($(this).data('message'))) {
      event.preventDefault();
      if(_this.validateFormFields()) {
        _this.sendOrderData();
      }
    }
  });
};

$(document).ready( function() {
  var domElements = {
    btn: $('.request-order'),
    inputField : $('.buyers_field')
  };
  var submitForm = new SubmitForm(domElements);
  submitForm.bindEvents();
});
