window.onload = function () {
    const display = document.getElementById('timer')
    if (display) {
      const allTime = display.dataset.time
      startTimer((allTime * 60), display)
    }
}

function startTimer(duration, display) {
    let timer = duration, minutes, seconds
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10)

        minutes = minutes < 10 ? "0" + minutes : minutes
        seconds = seconds < 10 ? "0" + seconds : seconds

        display.textContent = minutes + ":" + seconds

        if (--timer < 0) {
          const path = window.location
          window.location.href = path + '/result'
        }
    }, 1000)
}
