from manimlib.imports import *

class lauren(Scene):
  def construct(self):
    lauren = TexMobject('\\mathbb{L}\\text{auren}')
    neural = TexMobject('\\mathbb{N}\\text{eural}')

    lauren.set_color(BLACK)
    lauren.scale(5)
    neural.set_color(BLACK)
    neural.scale(5)

    self.play(Write(neural))
    self.play(Transform(neural, lauren))
    self.wait()
