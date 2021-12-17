var mainContent;
var titleContent;

$(function () {
    mainContent = $("#main-content"); /// render partial views.
    titleContent = $("title"); // render titles.
});

var routingApp = $.sammy("#main-content", function () {
    this.get("#/Products", function (context) {
        titleContent.html("Products");
        $.get("/Products", function (data) {
            context.$element().html(data);
        });
    });






    this.get("#/ShopCart", function (context) {
        titleContent.html("ContactUs");
        $.get("/ShopCart", function (data) {
            context.$element().html(data);
        });
    });







});

$(function () {
    routingApp.run("#/Products"); // default routing page.
});

function IfLinkNotExist(type, path) {
    if (!(type != null && path != null))
        return false;

    var isExist = true;

    if (type.toLowerCase() == "get") {
        if (routingApp.routes.get != undefined) {
            $.map(routingApp.routes.get, function (item) {
                if (item.path.toString().replace("/#", "#").replace(/\\/g, '').replace("$/", "").indexOf(path) >= 0) {
                    isExist = false;
                }
            });
        }
    } else if (type.toLowerCase() == "post") {
        if (routingApp.routes.post != undefined) {
            $.map(routingApp.routes.post, function (item) {
                if (item.path.toString().replace("/#", "#").replace(/\\/g, '').replace("$/", "").indexOf(path) >= 0) {
                    isExist = false;
                }
            });
        }
    }
    return isExist;
}