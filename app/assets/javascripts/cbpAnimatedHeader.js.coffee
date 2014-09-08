$ ->
  cbpAnimatedHeader = (->
    init = ->
      window.addEventListener "scroll", ((event) ->
        unless didScroll
          didScroll = true
          setTimeout scrollPage, 250
        return
      ), false
      return
    scrollPage = ->
      sy = scrollY()
      if sy >= changeHeaderOn
        classie.add header, "navbar-shrink"
      else
        classie.remove header, "navbar-shrink"
      didScroll = false
      return
    scrollY = ->
      window.pageYOffset or docElem.scrollTop
    docElem = document.documentElement
    header = document.querySelector(".navbar-fixed-top")
    didScroll = false
    changeHeaderOn = 300
    init()
    return
  )()