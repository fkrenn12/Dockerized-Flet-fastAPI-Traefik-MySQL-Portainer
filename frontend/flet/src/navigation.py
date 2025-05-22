import flet as ft
from home import HomeView
from example_site import SiteView


class RouteErrorView(ft.View):
    def __init__(self):
        super().__init__()
        self.controls = [ft.Text('Access Denied')]

    def did_mount(self):
        self.page.update()


def routing(route):
    match route:
        case '/':
            return HomeView()
        case '/site':
            return SiteView()
        case _:
            return RouteErrorView()


def navigate(route, page):
    print('Navigate Page.route', page.route)
    print('Navigate route', route)
    page.views.clear()
    # page.views.append(page.home_view)
    view = routing(route)
    if view:
        page.views.append(view)
    print('Navigate Page.views', page.views)
    page.update()
