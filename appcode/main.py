import kivy
from kivy.lang import Builder
from kivymd.app import MDApp


class VZTmeApp(MDApp):
    def build(self):
        self.theme_cls.theme_style = "Light"
        self.theme_cls.primary_palette = "Cyan"
        return Builder.load_file('login.kv')


if __name__ == '__main__':
    VZTmeApp().run()