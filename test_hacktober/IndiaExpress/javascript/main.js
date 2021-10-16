window.addEventListener("scroll", check);

function check() {
    if (pageYOffset >= 500) {
        document.querySelector("nav").classList.add("bg-dark");
    } else {
        document.querySelector("nav").classList.remove("bg-dark");
    }
}

function showDay2() {
    document.getElementById("day2").classList.remove("hide");
    document.getElementById("day1").classList.add("hide");
}

function showDay1() {
    document.getElementById("day1").classList.remove("hide");
    document.getElementById("day2").classList.add("hide");
}