from bokeh.plotting import figure, show
from bokeh.models import ColumnDataSource, FactorRange
from calendar import month_abbr
import numpy as np
import random

# Create some data
quarters = ["Q1", "Q2", "Q3", "Q4"]
months = month_abbr[1:]
months = np.array_split(months, 4)
factors = [(quarters[ind], m) for ind, month in enumerate(months) for m in month]

p = figure(
    x_range=FactorRange(*factors),
    plot_height=250,
    toolbar_location=None,
    tools=""
)
x = random.choices(range(1,10), k=12)
y = random.choices(range(1,10), k=4)

p.vbar(x=factors, top=x, width=0.9, alpha=0.4)
p.line(x=quarters, y=y, color="firebrick", line_width=4)

p.y_range.start=0
p.x_range.range_padding=0.1
p.xgrid.grid_line_color=None

show(p)