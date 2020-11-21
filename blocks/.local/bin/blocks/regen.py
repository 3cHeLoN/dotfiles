#!/bin/env python3
import numpy as np
import pycurl
from io import BytesIO

try:
    bytes_obj = BytesIO()
    crl = pycurl.Curl()
    crl.setopt(crl.URL,
               "https://gpsgadget.buienradar.nl/data/raintext?lat=52&lon=4.72")
    crl.setopt(crl.WRITEDATA, bytes_obj)
    crl.perform()
    crl.close()

    text = bytes_obj.getvalue().decode('utf-8')
    entries = text.split()
    
    data = [float(el.split('|')[0]) for el in entries]
    data = np.array(data)
    
    # convert data
    rain_rate = 10 ** ((data - 109) / 32)
    
    # integrate total
    rain_total = (5 / 60) * rain_rate.sum()
    
    if rain_total > 0.05:
        symbol = "🌨"
    else:
        symbol = "🌞"
    print(f"{symbol}{rain_total:.1f}mm")
except:
    pass
