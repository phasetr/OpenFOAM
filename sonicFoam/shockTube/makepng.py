#-*- coding=utf-8 -*-
from pathlib import Path
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd
import pathlib
import pprint
pp = pprint.pprint

class GraphData:
    def __init__(self, fname, df):
        self.fname = fname
        self.df = df

def main():
    dirname = "postProcessing/sample"
    files = list(Path(dirname).glob("*/*.xy"))

    cols = list(range(7))
#    t_df = pd.DataFrame(index=[], columns=cols)
#    u_df = pd.DataFrame(index=[], columns=cols)
#    p_df = pd.DataFrame(index=[], columns=cols)
    ts = []
    us = []
    ps = []

    for i, fl in enumerate(files):
        dirname = fl.parent.name
        df = pd.read_table(fl, header=None, dtype="float")
        if len(df.columns) == 4:
            ts.append(GraphData(dirname, df[[0, 1]]))
            us.append(GraphData(dirname, df[[0, 2]]))
            ps.append(GraphData(dirname, df[[0, 3]]))

    fig = plt.figure(1)
    plt.title("Temperatures")
    for data in ts:
        fname = data.fname
        df = data.df
        plt.plot(df[0], df[1], label=fname)

    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0, fontsize=10)
    plt.subplots_adjust(right=0.8)
    plt.xlabel("x")
    plt.ylabel("Temperature")
    fig.savefig("plot_T.png")

    fig = plt.figure(2)
    plt.title("Velocities")
    for data in us:
        fname = data.fname
        df = data.df
        plt.plot(df[0], df[2], label=fname)
 
    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0, fontsize=10)
    plt.subplots_adjust(right=0.8)
    plt.xlabel("x")
    plt.ylabel("Velocity")
    fig.savefig("plot_U.png")

    fig = plt.figure(3)
    plt.title("Pressures")
    for data in ps:
        fname = data.fname
        df = data.df
        plt.plot(df[0], df[3], label=fname)

    plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', borderaxespad=0, fontsize=10)
    plt.subplots_adjust(right=0.8)
    plt.xlabel("x")
    plt.ylabel("Pressure")
    fig.savefig("plot_p.png")

if __name__ == '__main__':
    main()
