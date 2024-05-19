from datetime import date
import datetime

now = date.today()
born = datetime.date(1999, 6, 5)

print(f"{now.year - born.year} ans")