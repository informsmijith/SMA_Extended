  $(window)
    .load(function () {
        setTimeout(function () {
            $('.loading-container')
                .addClass('loading-inactive');
        }, 1000);
    });