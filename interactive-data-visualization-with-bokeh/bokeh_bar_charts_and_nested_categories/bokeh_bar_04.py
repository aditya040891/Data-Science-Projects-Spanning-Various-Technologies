from bokeh.plotting import figure, show
from bokeh.models import ColumnDataSource, FactorRange
from bokeh.palettes import Spectral3
from bokeh.transform import factor_cmap
import random

# Generate Random Data
fruits = ['Apples', 'Pears', 'Kiwis', 'Plums', 'Bananas', 'Strawberries']
years = ["2024", "2025", "2026"]
count_2024 = random.sample(range(1,10), len(fruits))
count_2025 = random.sample(range(1,10), len(fruits))
count_2026 = random.sample(range(1,10), len(fruits))

data = {
    'fruits':fruits,
    '2024':count_2024,
    '2025':count_2025,
    '2026':count_2026
}

fruit_year = [(fruit, year) for fruit in fruits for year in years]
counts = sum(zip(data['2024'], data['2025'], data['2026']), ())

df = dict(fruit_year=fruit_year,
          counts=counts)

source = ColumnDataSource(data=df)


p = figure(x_range=FactorRange(*fruit_year), 
           plot_height=250,
           title='Fruit Counts By Year',
           toolbar_location=None,
           tools="")

p.vbar(x="fruit_year", top="counts", width=0.9, source=source, 
       fill_color=factor_cmap("fruit_year", palette=Spectral3, factors=years, 
                              start=1, end=2))

p.y_range.start=0
p.x_range.range_padding=0.1
p.xaxis.major_label_orientation = 1
p.xgrid.grid_line_color=None

show(p)