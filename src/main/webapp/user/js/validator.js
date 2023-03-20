function Validator(option) {

    function validate(inputElement, rule) {
        // hàm thực hiện validate
        var errorElement = inputElement.parentElement.querySelector('.form-message');
        var errorMessage = rule.test(inputElement.value);

        if (errorMessage) {
            errorMessage.innerText = errorMessage;
            inputElement.parentElement.classList.add("invalid");
        } else {
            errorMessage.innerText = "";
            inputElement.parentElement.classList.remove("invalid");
        }
    }

    // lấy element của form cần validate
    let formElement = document.querySelector(option.form);
    if (formElement) {
        option.rules.forEach(function (rule) {
            let inputElement = formElement.querySelector(rule.selector);
            if (inputElement) {
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                }
            }
        });
    }
}

Validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : 'Vui lòng nhập trường này'
        }
    };
}
Validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : 'Vui lòng nhập đúng email'
        }
    }
}