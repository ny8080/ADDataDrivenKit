# TDFDataDrivenKit

拆分 TDFComponents 中的 

- Core 为 TDFDataDrivenKit
- 基础 Items 为 TDFDataDrivenBaseItems 
- 帮助分类为 TDFDataDrivenHelper
- 表单 Items 为 TDFDataDrivenFormItems
- **真**公用 Items 为 TDFDataDrivenCommonItems
- 还有更多的非公用组件，各业务线组件需要拆分

DataDriven 组件依赖图如下：

![](./arch.jpg)


如果有业务方需要自用的 Items，比如 Member ，可创建如下依赖：

![](./member.jpg)


需要注意的是，Items 组件一定要**避免水平依赖**，否则会大大增加 lint 、publish 的耗时

非公用的 Item，放在使用它的组件中

尽可能地**控制公用 Items 组件的大小 / 粒度**，以加快 CI / CD

