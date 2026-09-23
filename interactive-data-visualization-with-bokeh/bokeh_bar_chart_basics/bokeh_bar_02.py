from bokeh.plotting import figure, show
from bokeh.models import ColumnDataSource
from bokeh.palettes import Spectral3
import random


fruits = ['Apples', 'Pears', 'Kiwis', 'Plums', 'Bananas', 'Strawberries']
year = ["2024", "2025", "2026"]
count_2024 = random.sample(range(1,10), len(fruits))
count_2025 = random.sample(range(1,10), len(fruits))
count_2026 = random.sample(range(1,10), len(fruits))

data = {
    'fruits':fruits,
    '2024':count_2024,
    '2025':count_2025,
    '2026':count_2026
}

source=ColumnDataSource(data=data)

p = figure(
    x_range=fruits,
    plot_height=250,
    title="Fruit Counts By Year",
    toolbar_location=None,
    tools="hover",
    tooltips="$name @fruits: @$name"
)

p.vbar_stack(year,
       x='fruits',
       width=0.95,
       color=Spectral3,
       source=source,
       legend_label=year)

p.y_range.start=0
p.x_range.range_padding=0.1


show(p)