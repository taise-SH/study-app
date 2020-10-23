function answer() {

  const answerButton = document.getElementById("my_problem-answer-btn")
  const answerIndex = document.getElementById("my_problem-answer-id")
  ///const answerButtons = document.querySelectorAll("my_problem-answer-btn")
  ///const amswerIndexs = document.querySelectorAll("my_problem-answer-id")
  //let answerIndexButtons = answerButtons.childElementCount;
  //const answerIndexs = answerIndex.childElementCount;

  //let answerLength = 0;
  //while (answerLength < answerIndexButtons){
  ///answerIndexButtons.forEach(function(answers){
    answerButton.addEventListener('mouseover', function(){
      answerButton.setAttribute("style", "background-color: rgb(151, 205, 253);")
    })
  
    //answerButton.addEventListener('mouseover', function(){
    //  answerButton.setAttribute("style", "background-color: rgb(151, 205, 253);")
    //})

    answerButton.addEventListener('mouseout', function(){
      answerButton.removeAttribute("style", "background-color: rgb(151, 205, 253);")
    })
  ///})
  //  answerLength++;
  //}

    answerButton.addEventListener('click', function(){
      if (answerIndex.getAttribute("style") == "display:block;") {
        answerIndex.removeAttribute("style", "display:block;")
      } else {
        answerIndex.setAttribute("style", "display:block;")
      }
    })
  
    //answerButtons.forEach()
  //  answerLength++;
  //}
}

window.addEventListener("load", answer);