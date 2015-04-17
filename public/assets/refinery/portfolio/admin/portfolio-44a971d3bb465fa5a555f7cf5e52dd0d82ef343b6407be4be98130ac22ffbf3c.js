(function() {
  var $;

  $ = jQuery;

  window.portfolio = {
    append_image: function(images) {
      return $.each(images, function(index, image) {
        var image_id, image_src, new_image;
        console.log(image);
        image_id = $(image).attr('id').replace('image_', '');
        image_src = $(image).attr('data-medium');
        new_image = $('li.image_field.blank:first').clone();
        new_image.find('.attributes input.image_id').val(image_id);
        $('<img/>', {
          src: image_src
        }).appendTo(new_image.find('.thumb'));
        return new_image.attr('id', "image_" + image_id).appendTo('#page_images').removeClass('blank');
      });
    }
  };

  $(function() {
    page_options.init(false, '', '');
    $('#page_images').sortable();
    return $(document).on('click', '#page_images li .delete_image', function() {
      if (confirm("Are you sure you want to remove this image?")) {
        return $(this).parents('li').remove();
      } else {
        return false;
      }
    });
  });

}).call(this);
