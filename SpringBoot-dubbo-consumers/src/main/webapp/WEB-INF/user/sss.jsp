<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Failed to invoke remote proxy method queryUserPage to registry://127.0.0.1:2181/com.alibaba.dubbo.registry.RegistryService?application=dubbo_provider&check=false&dubbo=2.5.3&export=dubbo%3A%2F%2F192.168.31.80%3A20880%2Fcom.jk.service.user.UserService%3Fanyhost%3Dtrue%26application%3Ddubbo_provider%26dubbo%3D2.5.3%26interface%3Dcom.jk.service.user.UserService%26methods%3DqueryUserPage%26pid%3D6808%26side%3Dprovider%26timeout%3D600000%26timestamp%3D1542106938943&pid=6808&registry=zookeeper&subscribe=false&timestamp=1542106938931, cause: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:76) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.InvokerWrapper.invoke(InvokerWrapper.java:53) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ExceptionFilter.invoke(ExceptionFilter.java:64) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.monitor.support.MonitorFilter.invoke(MonitorFilter.java:75) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.TimeoutFilter.invoke(TimeoutFilter.java:42) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.filter.TraceFilter.invoke(TraceFilter.java:78) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ContextFilter.invoke(ContextFilter.java:60) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.GenericFilter.invoke(GenericFilter.java:112) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ClassLoaderFilter.invoke(ClassLoaderFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.EchoFilter.invoke(EchoFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.DubboProtocol$1.reply(DubboProtocol.java:108) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.handleRequest(HeaderExchangeHandler.java:84) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.received(HeaderExchangeHandler.java:170) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.DecodeHandler.received(DecodeHandler.java:52) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.dispatcher.ChannelEventRunnable.run(ChannelEventRunnable.java:82) [dubbo-2.5.3.jar:2.5.3]
	at java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source) [na:1.8.0_31]
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(Unknown Source) [na:1.8.0_31]
	at java.lang.Thread.run(Unknown Source) [na:1.8.0_31]
Caused by: java.lang.IllegalArgumentException: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.common.bytecode.Wrapper1.invokeMethod(Wrapper1.java) ~[na:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.javassist.JavassistProxyFactory$1.doInvoke(JavassistProxyFactory.java:46) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:72) ~[dubbo-2.5.3.jar:2.5.3]
	... 25 common frames omitted
Caused by: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	... 28 common frames omitted

2018-11-13 19:03:27.671 ERROR 6808 --- [:20880-thread-3] c.a.dubbo.rpc.filter.ExceptionFilter     :  [DUBBO] Got unchecked and undeclared exception which called by 192.168.31.80. service: com.jk.service.user.UserService, method: queryUserPage, exception: com.alibaba.dubbo.rpc.RpcException: Failed to invoke remote proxy method queryUserPage to registry://127.0.0.1:2181/com.alibaba.dubbo.registry.RegistryService?application=dubbo_provider&check=false&dubbo=2.5.3&export=dubbo%3A%2F%2F192.168.31.80%3A20880%2Fcom.jk.service.user.UserService%3Fanyhost%3Dtrue%26application%3Ddubbo_provider%26dubbo%3D2.5.3%26interface%3Dcom.jk.service.user.UserService%26methods%3DqueryUserPage%26pid%3D6808%26side%3Dprovider%26timeout%3D600000%26timestamp%3D1542106938943&pid=6808&registry=zookeeper&subscribe=false&timestamp=1542106938931, cause: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl, dubbo version: 2.5.3, current host: 127.0.0.1

com.alibaba.dubbo.rpc.RpcException: Failed to invoke remote proxy method queryUserPage to registry://127.0.0.1:2181/com.alibaba.dubbo.registry.RegistryService?application=dubbo_provider&check=false&dubbo=2.5.3&export=dubbo%3A%2F%2F192.168.31.80%3A20880%2Fcom.jk.service.user.UserService%3Fanyhost%3Dtrue%26application%3Ddubbo_provider%26dubbo%3D2.5.3%26interface%3Dcom.jk.service.user.UserService%26methods%3DqueryUserPage%26pid%3D6808%26side%3Dprovider%26timeout%3D600000%26timestamp%3D1542106938943&pid=6808&registry=zookeeper&subscribe=false&timestamp=1542106938931, cause: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:76) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.InvokerWrapper.invoke(InvokerWrapper.java:53) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ExceptionFilter.invoke(ExceptionFilter.java:64) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.monitor.support.MonitorFilter.invoke(MonitorFilter.java:75) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.TimeoutFilter.invoke(TimeoutFilter.java:42) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.filter.TraceFilter.invoke(TraceFilter.java:78) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ContextFilter.invoke(ContextFilter.java:60) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.GenericFilter.invoke(GenericFilter.java:112) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ClassLoaderFilter.invoke(ClassLoaderFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.EchoFilter.invoke(EchoFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.DubboProtocol$1.reply(DubboProtocol.java:108) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.handleRequest(HeaderExchangeHandler.java:84) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.received(HeaderExchangeHandler.java:170) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.DecodeHandler.received(DecodeHandler.java:52) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.dispatcher.ChannelEventRunnable.run(ChannelEventRunnable.java:82) [dubbo-2.5.3.jar:2.5.3]
	at java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source) [na:1.8.0_31]
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(Unknown Source) [na:1.8.0_31]
	at java.lang.Thread.run(Unknown Source) [na:1.8.0_31]
Caused by: java.lang.IllegalArgumentException: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.common.bytecode.Wrapper1.invokeMethod(Wrapper1.java) ~[na:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.javassist.JavassistProxyFactory$1.doInvoke(JavassistProxyFactory.java:46) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:72) ~[dubbo-2.5.3.jar:2.5.3]
	... 25 common frames omitted
Caused by: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	... 28 common frames omitted

2018-11-13 19:03:27.687 ERROR 6808 --- [:20880-thread-4] c.a.dubbo.rpc.filter.ExceptionFilter     :  [DUBBO] Got unchecked and undeclared exception which called by 192.168.31.80. service: com.jk.service.user.UserService, method: queryUserPage, exception: com.alibaba.dubbo.rpc.RpcException: Failed to invoke remote proxy method queryUserPage to registry://127.0.0.1:2181/com.alibaba.dubbo.registry.RegistryService?application=dubbo_provider&check=false&dubbo=2.5.3&export=dubbo%3A%2F%2F192.168.31.80%3A20880%2Fcom.jk.service.user.UserService%3Fanyhost%3Dtrue%26application%3Ddubbo_provider%26dubbo%3D2.5.3%26interface%3Dcom.jk.service.user.UserService%26methods%3DqueryUserPage%26pid%3D6808%26side%3Dprovider%26timeout%3D600000%26timestamp%3D1542106938943&pid=6808&registry=zookeeper&subscribe=false&timestamp=1542106938931, cause: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl, dubbo version: 2.5.3, current host: 127.0.0.1

com.alibaba.dubbo.rpc.RpcException: Failed to invoke remote proxy method queryUserPage to registry://127.0.0.1:2181/com.alibaba.dubbo.registry.RegistryService?application=dubbo_provider&check=false&dubbo=2.5.3&export=dubbo%3A%2F%2F192.168.31.80%3A20880%2Fcom.jk.service.user.UserService%3Fanyhost%3Dtrue%26application%3Ddubbo_provider%26dubbo%3D2.5.3%26interface%3Dcom.jk.service.user.UserService%26methods%3DqueryUserPage%26pid%3D6808%26side%3Dprovider%26timeout%3D600000%26timestamp%3D1542106938943&pid=6808&registry=zookeeper&subscribe=false&timestamp=1542106938931, cause: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:76) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.InvokerWrapper.invoke(InvokerWrapper.java:53) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ExceptionFilter.invoke(ExceptionFilter.java:64) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.monitor.support.MonitorFilter.invoke(MonitorFilter.java:75) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.TimeoutFilter.invoke(TimeoutFilter.java:42) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.filter.TraceFilter.invoke(TraceFilter.java:78) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ContextFilter.invoke(ContextFilter.java:60) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.GenericFilter.invoke(GenericFilter.java:112) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.ClassLoaderFilter.invoke(ClassLoaderFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.filter.EchoFilter.invoke(EchoFilter.java:38) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.ProtocolFilterWrapper$1.invoke(ProtocolFilterWrapper.java:91) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.protocol.dubbo.DubboProtocol$1.reply(DubboProtocol.java:108) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.handleRequest(HeaderExchangeHandler.java:84) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.exchange.support.header.HeaderExchangeHandler.received(HeaderExchangeHandler.java:170) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.DecodeHandler.received(DecodeHandler.java:52) [dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.remoting.transport.dispatcher.ChannelEventRunnable.run(ChannelEventRunnable.java:82) [dubbo-2.5.3.jar:2.5.3]
	at java.util.concurrent.ThreadPoolExecutor.runWorker(Unknown Source) [na:1.8.0_31]
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(Unknown Source) [na:1.8.0_31]
	at java.lang.Thread.run(Unknown Source) [na:1.8.0_31]
Caused by: java.lang.IllegalArgumentException: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	at com.alibaba.dubbo.common.bytecode.Wrapper1.invokeMethod(Wrapper1.java) ~[na:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.javassist.JavassistProxyFactory$1.doInvoke(JavassistProxyFactory.java:46) ~[dubbo-2.5.3.jar:2.5.3]
	at com.alibaba.dubbo.rpc.proxy.AbstractProxyInvoker.invoke(AbstractProxyInvoker.java:72) ~[dubbo-2.5.3.jar:2.5.3]
	... 25 common frames omitted
Caused by: java.lang.ClassCastException: com.jk.service.user.UserServiceImpl cannot be cast to com.jk.service.user.UserServiceImpl
	... 28 common frames omitted

</body>
</html>