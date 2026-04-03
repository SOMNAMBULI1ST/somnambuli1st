---
title: A Travel Chain Spatiotemporal Mining System
summary: This project was part of the China Mobile Big Data Summer Practice Program.
tags:
  - Deep Learning
date: "2023-06-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
# external_link: https://github.com/WeAreCrazyCodingMonsters/TrafficAnalysis

image:
  caption: Photo by ziyangzhang in Beijing
  focal_point: Smart


url_code: ''
url_pdf: ''
url_slides: ''
url_video: ''

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
#PDF: example
image:
  caption: ''
  focal_point: ''
  placement: 2
  preview_only: false
---

## Introduction

This project was part of the China Mobile Big Data Summer Practice Program，A Travel Chain Spatiotemporal Mining System.

Links：[https://github.com/WeAreCrazyCodingMonsters/TrafficAnalysis](https://github.com/WeAreCrazyCodingMonsters/TrafficAnalysis)

## 作者

[葛钰峣 Yuyao Ge](https://github.com/GeYuYao-hub)，[张子扬 Ziyang Zhang](https://github.com/SOMNAMBULI1ST)，[包启延 Qiyan Bao](https://github.com/sTTTST)，[刘涛 Tao Liu](https://github.com/tingb0)，[赵士轲 Shike Zhao](https://github.com/Zskkkkk) ，[周镇涛 Zhentao Zhou](https://github.com/Nishino33)，[毕嘉睿 Jiarui Bi](https://github.com/FeiXuePrime)

## 摘要

<div align="center"> <img src="fig/1.png" width = 800 height = 500 /> </div>

  通过用户OD数据表示的行程信息的分段任务主要可以划分为两个部分，分别是行程链划分和行程段识别。行程链划分是指通过分析用户行程点将连续的用户行程划分为离散的行程段, 而行程段识别是指将离散的行程段与用户的出行方式相映射。对于用户出行链的预测问题, 本文使用了循环神经网络中经典的长短期记忆网络(LSTM), 我们将任务二中获得的数据用于训练LSTM, 使得LSTM能够很好地收敛。

 <div align="center"> <img src="fig/2.png" width = 800 height = 750 /> </div>

  对于行程链划分问题, 本文考虑使用五个属性, 即[经度, 纬度, 时间点, 速度, 乘坐地铁的可能性], 来对一个行程点进行描述, 然后通过基于高斯混合无监督聚类算法开发的时空-速度-权重-高斯混合聚类算法(TSSW聚类)对行程点进行聚类分析。其中，对于速度属性本文使用了KMeans聚类算法将连续的速度划分为十个离散的速度等级以增强聚类算法的易收敛性, 对于乘坐地铁的可能性本文设计了平滑的类Sigmoid函数来适应权重映射和反向梯度传播算法。

 <div align="center"> <img src="fig/3.png" width = 800 height = 400 /> </div>

  对于行程段识别问题，本文考虑使用全连接神经网络实现五维属性到出行方式的非线性映射。

 <div align="center"> <img src="fig/4.png" width = 800 height = 400 /> </div>

  对于行程链预测问题, 本文考虑使用三个属性, 即[经度，纬度，时间点], 来描述一个行程点。将任务二中人工和全连接神经网络标注的数据作为循环神经网络的训练集和验证集进行训练和检测。经实验证明, 我们的方法可以使LSTM很好地收敛。

  除了在学术上的贡献，本文在软件工程领域也作出了贡献。在数据读取上，本文设计了Cache结构避免了对磁盘中的数据重复读取; 在轨迹处理上，本文去除了漂移点并使用卡尔曼滤波对轨迹进行平滑处理; 在高精度定位上，本文实现了WGS84到GCJ02坐标系的高精度转换，坐标可以精确到小数点五位; 在可视化设计上，本文设计了五维行程点到三维空间的投影和高精地图标点; 在代码风格上，本文的代码严格符合“高内聚，低耦合”和面向对象的设计思想。

  综上, 本文以较高的软件工程水平实现了一个基于TSSW时空聚类、FCNN和RNN的时空大数据分析系统, 实现了对用户出行链的分段, 识别, 评估。

