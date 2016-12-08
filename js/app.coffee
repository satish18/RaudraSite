---
---
$ ->
  setTimeout ->
    $('.course-selector-content').addClass('fadeOutDown')
  , 1000
  $('.course-selector').hover ->
    $(@).find('.course-selector-content').removeClass('fadeOutDown').addClass('fadeInUp')
  $('.course-selector').mouseleave ->
    $(@).find('.course-selector-content').removeClass('fadeInUp').addClass('fadeOutDown')
  $('#home-page header').affix
      offset:
        top: 300

  $('#about .items-sm .item').click ->
    unless $(@).hasClass 'active'
      $('#about .items-sm .item').removeClass 'active'
      $(@).addClass 'active'

  $('#videos .video-nav .items .item').click ->
    unless $(@).hasClass 'active'
      $('#videos .video-nav .items .item').removeClass 'active'
      $(@).addClass 'active'
      videoFrame = "<iframe  src='#{@.dataset.videoUrl}' frameborder='0' allowfullscreen></iframe>"
      $('#videos .video-container').html(videoFrame)
  $('#testimonials .testimonial').click ->
    testimonialContent = "<blockquote><p>"
    testimonialContent += @.dataset.content
    testimonialContent += "</p><footer>"
    testimonialContent += @.dataset.author
    testimonialContent += "</footer></blockquote>"
    $('#testimonial-display').html(testimonialContent)
    $('#testimonials .testimonial').removeClass('active')
    $(@).addClass('active')
