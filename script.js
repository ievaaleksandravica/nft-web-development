h2s = document.querySelectorAll("h2")
content_titles = document.querySelectorAll(".content-title h3")
content_details = document.querySelectorAll(".content-details")
h3s = document.querySelectorAll("h3")

hideContent()


h2s.forEach((h2) => {
    h2.addEventListener("click", () => {  
        if (h2.nextElementSibling.classList.contains("do-not-display")) {
            hideContent()
            hideDetails()
        }
        
        
        h2.nextElementSibling.classList.toggle("do-not-display")
    })
 })


 content_titles.forEach((title) => {
     title.addEventListener("click", () => {
        if (title.nextElementSibling.classList.contains("do-not-display")) {
            hideDetails()
        }
        
        title.nextElementSibling.classList.toggle("do-not-display")
     })
 })

function hideContent() {
    content_titles.forEach((title) => {
        title.nextElementSibling.classList.add("do-not-display")
    })
}

function hideDetails() {
    content_details.forEach((detail) => {
        detail.classList.add("do-not-display")
    })
}

