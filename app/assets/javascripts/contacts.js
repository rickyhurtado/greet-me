var SampleRailsApp = SampleRailsApp || {};

SampleRailsApp.Contacts = {};

SampleRailsApp.Contacts.Utils = {
  showContact: function(content){
    $('.js-contact-list').hide().after(content);
    this.viewContactButton();
  },

  viewContactButton: function(){
    $(document).on('click', '.js-view-contacts-button', function(e){
      e.preventDefault();

      $('.js-view-contact, .js-edit-contact').remove();
      $('.js-contact-list').show();
    });
  },

  editContact: function(content){
    $('.js-view-contact').hide().after(content);
    this.backButton();
  },

  backButton: function(){
    $('.js-back-button').on('click', function(e){
      e.preventDefault();

      $('.js-edit-contact').remove();
      $('.js-view-contact').show();
    });
  },

  alertMessage: function(message){
    alert(message);
  }
};

$(function(){
  $(document).on('click', '.js-submit-contact-form', function(){
    $(this).closest('form').attr('disabled', true);
  });
});
