package com.sut.test.domain;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/blablas")
@Controller
@RooWebScaffold(path = "blablas", formBackingObject = Blabla.class)
public class BlablaController {
}
