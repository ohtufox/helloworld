
let elements = document.getElementsByTagName('input');

for (let i = 0; i < elements.length; i++) {
    if(elements[i].type === 'password') {
        let element = elements[i];
		element.style.border = "5px solid red";
        element.addEventListener('click', function(e) {
			showPassword(element);
        });
    }
}


