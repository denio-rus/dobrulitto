document.addEventListener('turbolinks:load', function() {
  var controls = document.querySelectorAll('.form-inline-link'); 
  
  if (controls.length) {
    for (var i = 0; i <controls.length; i++) {
      controls[i].addEventListener('click', formInlineLinkHandler)
    }
  }
  
  var errors = document.querySelector('.resource-errors')
  if (errors) {
    var resourceId = errors.dataset.resourceId;
    formInlineHandler(resourceId);
  }
})

function formInlineLinkHandler(event) {
  event.preventDefault();
  var resourceId = this.dataset.resourceId;
  formInlineHandler(resourceId);
};

function formInlineHandler(resourceId) {
  var link = document.querySelector('.form-inline-link[data-resource-id="' + resourceId + '"]');
  var resourceTitle = document.querySelector('.title[data-resource-id="' + resourceId + '"]');
  var formInline = document.querySelector('.form-inline[data-resource-id="' + resourceId + '"]');

  if (formInline.classList.contains('hide')) {
    resourceTitle.classList.add('hide');
    formInline.classList.remove('hide');
    link.textContent = 'cancel'
  } else {
    resourceTitle.classList.remove('hide');
    formInline.classList.add('hide');
    link.textContent = 'edit'
  }
}