# Computer Vision for Robotics

[Root](../../../../../README.md) › [Automation Robotics](../../../../../README.md#domains) › [Advanced Theory](../../../02_Advanced_Theory) › [Research Papers](../) › **Computer Vision for Robotics**

## Summary

Camera-based perception for robots: calibration, detection, pose estimation and visual servoing.

- **Items:** 2
- **Years:** 2020–2024
- **Licenses:** CC BY (2)

## Chapter summaries

Each chapter (PDF) in this topic, summarized from its first two pages.

### 1. Event-Based Vision: A Survey

*File: `Event_Based_Vision_A_Survey__W3040838455.pdf`*

**Brief:** A survey of event cameras, bio-inspired sensors that asynchronously report per-pixel brightness changes instead of frames. It reviews why they are attractive and how they are used in vision and robotics.

**Main notes:**

- Events encode the time, location and sign of brightness changes
- Advantages listed include high temporal resolution (order of ms) and very high dynamic range (140 dB versus 60 dB)
- Low power is also cited as an advantage over conventional frame cameras

### 2. OpenVLA: An Open-Source Vision-Language-Action Model

*File: `OpenVLA_An_Open_Source_Vision_Language_Action_Model__W4399695759.pdf`*

**Brief:** Presents OpenVLA, a 7B-parameter open-source vision-language-action model for closed-loop robot control. It builds a robot policy by fine-tuning a vision-language model on robot data.

**Main notes:**

- Trained on 970k robot episodes from the Open X-Embodiment dataset
- Built from a ViT vision encoder and a Llama 2 7B base model
- Outputs robot actions from language instructions such as 'Wipe the table'
- Data, weights and code are released openly; supports multi-robot control and efficient fine-tuning

## Contents

1. [Event-Based Vision: A Survey](Event_Based_Vision_A_Survey__W3040838455.pdf) — 2020 · CC BY
2. [OpenVLA: An Open-Source Vision-Language-Action Model](OpenVLA_An_Open_Source_Vision_Language_Action_Model__W4399695759.pdf) — 2024 · CC BY
