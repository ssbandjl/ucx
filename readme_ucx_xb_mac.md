# UCX Note

## ucp_init
```c

```

## ucp_client_server


## bit

```c
typedef enum {
    CLIENT_SERVER_SEND_RECV_STREAM  = UCS_BIT(0),
    CLIENT_SERVER_SEND_RECV_TAG     = UCS_BIT(1),
    CLIENT_SERVER_SEND_RECV_AM      = UCS_BIT(2),
    CLIENT_SERVER_SEND_RECV_DEFAULT = CLIENT_SERVER_SEND_RECV_STREAM
} send_recv_type_t;
```
定义了三种通信模式：
STREAM：面向流的通信（类似TCP）
TAG：基于标签的消息传递（类似MPI的tagged消息）
AM (Active Message)：主动消息通信模式
使用位掩码(UCS_BIT)表示，可以组合使用


## AM
3. `UCP_FEATURE_AM`

这是一个预定义的宏，表示启用Active Message（AM）功能。

Active Message是一种异步通信模型，允许消息在到达目标时直接触发回调函数，无需显式接收操作。
适用于低延迟、事件驱动的场景（如RPC、任务调度等）。


## dynamic version check
这段代码定义了一个宏 `UCP_API_MAJOR`，其值为 `@MAJOR_VERSION@`。以下是对该代码的详细解释：

1. **宏定义**：
   - `#define` 是C/C++中的预处理指令，用于定义宏。
   - `UCP_API_MAJOR` 是宏的名称，通常用于表示UCX（Unified Communication X）库的API主版本号。

2. **`@MAJOR_VERSION@`**：
   - 这是一个占位符，通常在构建系统（如CMake或Autotools）处理模板文件时会被替换为实际的主版本号。
   - 在构建过程中，构建工具会读取项目的版本配置（如 `MAJOR_VERSION` 的值），并将 `@MAJOR_VERSION@` 替换为具体的数字（例如 `1`）。

3. **文件上下文**：
   - 文件路径 `/Users/xb/project/rdma/ucx/ucx/src/ucp/api/ucp_version.h.in` 表明这是一个模板文件（后缀 `.in` 常见于模板文件）。
   - 该文件属于UCX项目，UCX是一个高性能通信框架，常用于RDMA（远程直接内存访问）和HPC（高性能计算）领域。

4. **用途**：
   - 宏 `UCP_API_MAJOR` 用于在代码中标识API的主版本号，通常与次版本号（`MINOR_VERSION`）和补丁版本号（`PATCH_VERSION`）一起使用，以实现版本兼容性检查或条件编译。

总结：这段代码定义了一个宏，用于表示UCX API的主版本号，其实际值在构建时由构建工具动态生成并替换。





