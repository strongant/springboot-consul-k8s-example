package feign;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author: wenhui.bai
 * @email: wenhui.bai@shihengtech.com
 * @create: 2022-07-20 14:27
 **/
@FeignClient("springboot-discovery-service-example")
public interface ExampleFeign {


    @RequestMapping(method = RequestMethod.GET, value = "/api/call")
    String call();


}
