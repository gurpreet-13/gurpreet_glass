function Autocomplete(inputField, source) {
  this.inputField = inputField;
  this.source = source;
}

Autocomplete.prototype.setAutocompleteSource = function() {
  $(this.inputField).autocomplete({ source: this.source });
  $(this.inputField).on('autocompleteselect',
    function(event, ui){
      $(this).next('input:hidden').val(ui.item.id);
    });
};

Autocomplete.prototype.init = function() {
  this.setAutocompleteSource();
};


