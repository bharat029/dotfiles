#! /home/bharat/anaconda3/bin/python

import os


def rename(fname: str) -> str:
    *fname, ext = fname.split(".")
    fname = ".".join(fname)
    fname = fname.replace("_OceanofPDF.com_", "")
    fname = fname.replace("_", " ")
    fname = fname.replace("V  Bharathan Mudaliar", " ")
    fname = fname.replace("The Complete ", " ")
    fname = fname.replace("( PDFDrive )", " ")
    fname = fname.title()
    fname = fname.strip()
    fname += "." + ext

    return fname


for fname in os.listdir():
    new_name = rename(fname)
    if new_name != fname:
        os.rename(os.path.join(fname), os.path.join(rename(fname)))

