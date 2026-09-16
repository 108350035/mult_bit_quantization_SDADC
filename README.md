# mult_bit_quantization_SDADC
三位量化器之sigma delta adc 設計  有效位數16位

## 使用TSMC 28nm實現 類比電路的電源為1.8V、數位電路的電源為0.9V、調製器的參考電壓為1.2V

### matlab 模型
![image](https://github.com/108350035/mult_bit_quantization_SDADC/blob/main/simulink_model.JPG)

### 電路架構

![image](https://github.com/108350035/mult_bit_quantization_SDADC/blob/main/%E9%9B%BB%E8%B7%AF%E6%9E%B6%E6%A7%8B.JPG)

### 結果

#### SD結果
![image](https://github.com/108350035/mult_bit_quantization_SDADC/blob/main/SD.JPG)


#### 三級濾波器波形(CIC+補償+半帶)
![image](https://github.com/108350035/mult_bit_quantization_SDADC/blob/main/Filter.JPG)


