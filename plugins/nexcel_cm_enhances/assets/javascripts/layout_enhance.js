var cm = {
    init: function () {
        cm.hideCustomQueriesDropitMenu();
        cm.initSelect2ForQuickSearch();
    },

    // On mouse leave for drop-it
    hideCustomQueriesDropitMenu: function () {        
        $(".dropit-trigger, .dropit-submenu").on("mouseleave", function () {
            $('.dropit-open').removeClass('dropit-open').find('.dropit-submenu').hide();
        });
    },

    // Add Select2 to project search
    initSelect2ForQuickSearch: function(){
        $("#quick-search select").select2();
    }
}

$(document).ready(function () {
    cm.init();
})