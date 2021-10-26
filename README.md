
# HelloBoss工程说明：

# 一、 helloboss是主工程，主要功能是负责整合各个功能模块，具体操作是：
  1. 各模块对外提供的接口需要在 egg_manager模块定义好接口，定义好接口后需要在本模块中进行实现
  2. 在helloboss工程中的global_cotroller类中注册好 模块定义好的对外接口，一边其他模块调用
  3. 每个模块只需要引入egg_manager就行，不要引入其他模块

# 二、 egg_manager是api对外提供的接口模块，同时也有网络请求方法，具体用法：
 ### 服务接口
  1. 在api包下定义各个模块的对外接口，接口需要继承 IService
  2. 对于对外需要调用的页面，需要在AppPages定义自己的路径名称  如：/home
     需要在自己的模块的对外接口中调用addRoute方法，需要 路径名 和 相关widget实例 两个参数
     
  3. 要跳转到其他模块的界面，只需要调用jumpToPage传入注册的 路径名 和需要的参数
  4. 存储问题，可以直接调用servicemananger().writeValue(key,value) 来存，key为String, value为String,map，json类型
 ### 网络请求
  #### 网络请求有两种方式
  ##### 方式一、直接调用ServiceManager().provider.getData<T>方法，
       1. 需要传入返回成功，失败方法，传入的参数可以是String,map如果要传入实体类需要继承自BaseModel
       2. 目前不知道错误类型，目前把返回的信息传入到各个模块中进行处理，同时留了口，到时候可以按情况来封装
  ####  方式二、自己模块自定义，继承自BaseProvider，来处理自己的baseurl,处理header,处理请求等自定义。

# 三、 egg_launch模块 是启动模块，目前是按照上述方式做了启动页，测试上传手机信息

# 四、 问题
  1. 网络模块处理，需要根据业务来调整，这个放在后续，接口都有了，根据错误码来调整
  2. 功能UI模块，如loading,dialog，toast等，具体样式不明确，等明确后统一封装成eui模块，将主题，字体，共用ui等放入


  
  
