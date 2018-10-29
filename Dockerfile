# own docker for s2p build env on centos7

FROM ldumas/python_gdal_dockerfile:py_gdal

RUN . restart_env && yum install -y fftw3-devel GeographicLib-devel netcdf-devel

RUN cp /usr/include/libgeotiff/* /usr/include/

RUN pip install requests utm bs4 netcdf4 xarray dask
