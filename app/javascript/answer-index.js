function answer () {

  const answerIndexButton = document.getElementById("my_problem-answer-btn")
  const answerIndexButtons = document.getElementById("my_problem-answer-id")

  answerIndexButton.addEventListener('mouseover', function(){
    answerIndexButton.setAttribute("style", "background-color: rgb(151, 205, 253);")
  })

  answerIndexButton.addEventListener('mouseout', function(){
    answerIndexButton.removeAttribute("style", "background-color: rgb(151, 205, 253);")
  })

  answerIndexButton.addEventListener('click', function(){
    if (answerIndexButtons.getAttribute("style") == "display:block;") {
      answerIndexButtons.removeAttribute("style", "display:block;")
    } else {
      answerIndexButtons.setAttribute("style", "display:block;")
    }
  })
}

window.addEventListener("load", answer);