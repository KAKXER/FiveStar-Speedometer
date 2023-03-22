// ███████╗██╗██╗   ██╗███████╗███████╗████████╗ █████╗ ██████╗ 
// ██╔════╝██║██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗
// █████╗  ██║██║   ██║█████╗  ███████╗   ██║   ███████║██████╔╝
// ██╔══╝  ██║╚██╗ ██╔╝██╔══╝  ╚════██║   ██║   ██╔══██║██╔══██╗
// ██║     ██║ ╚████╔╝ ███████╗███████║   ██║   ██║  ██║██║  ██║
// ╚═╝     ╚═╝  ╚═══╝  ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝
// 		  	  5star.tebex.io | Discord/HdEzqEJBdh
var reload = 1
window.addEventListener("message", (event) => {
    switch (event.data.action) {
        case "DataLoad":
            if (event.data.opacity) {
                $("#Display").css("opacity", 1);
                $("#speed speed").text(event.data.Speed);
                $("#damage").text(event.data.Damage);
                $("#fuel").text(event.data.Fuel);

                if (reload === 1) {
                    setTimeout(() => {
                        $("#Display").css("left","0vw");
                        setTimeout(() => {
                            $("#DataUp").css("bottom","0vw");
                            setTimeout(() => {
                                $("#colors").css("opacity","1");
                            }, 400);
                        }, 300);
                    }, 280);
                    reload = 0
                }

                if (event.data.Engine) {
                    $("#motor_icon").css("filter", "none");
                } else {
                    $("#motor_icon").css("filter", "invert(13%) sepia(66%) saturate(7463%) hue-rotate(358deg) brightness(102%) contrast(110%)");
                }

                if (event.data.Seatbelt) {
                    $("#seatbelt_icon").css("filter", "invert(13%) sepia(66%) saturate(7463%) hue-rotate(358deg) brightness(102%) contrast(110%)");
                } else {
                    $("#seatbelt_icon").css("filter", "none");
                }

                if (event.data.Lock == 2) {
                    $("#doors_icon").css("filter", "none");
                } else {
                    $("#doors_icon").css("filter", "invert(13%) sepia(66%) saturate(7463%) hue-rotate(358deg) brightness(102%) contrast(110%)");
                }
                if (event.data.Light) {
                    $("#light_icon").css("filter", "invert(13%) sepia(66%) saturate(7463%) hue-rotate(358deg) brightness(102%) contrast(110%)");
                } else {
                    $("#light_icon").css("filter", "none");
                }

                var EngineSource = (event.data.EngineSpeed * 15).toFixed(2);
  
                if (EngineSource >= 3.2) {
                    $("data1").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data1").css("background-color", "rgba(54,72,17,0.502)");
                }
                
                if (EngineSource >= 3.5) {
                    $("data2").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data2").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 3.8) {
                    $("data3").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data3").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 4) {
                    $("data4").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data4").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 5) {
                    $("data5").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data5").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 5.5) {
                    $("data6").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data6").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 6) {
                    $("data7").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data7").css("background-color", "rgba(54,72,17,0.502)");
                }
        
                if (EngineSource >= 6.5) {
                    $("data8").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data8").css("background-color", "rgba(54,72,17,0.502)");
                }

                if (EngineSource >= 7) {
                    $("data9").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data9").css("background-color", "rgba(54,72,17,0.502)");
                }
        
        
                if (EngineSource >= 8) {
                    $("data10").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data10").css("background-color", "rgba(54,72,17,0.502)");
                }
                
                if (EngineSource >= 9) {
                    $("data11").css("background-color", "rgba(18,155,18,1)");
                } else {
                    $("data11").css("background-color", "rgba(54,72,17,0.502)");
                }
      
                if (EngineSource >= 10) {
                    $("data12").css("background-color", "rgba(252,243,27,1)");
                } else {
                    $("data12").css("background-color", "rgba(252,243,27,0.35)");
                }
        
                if (EngineSource >= 11) {
                    $("data13").css("background-color", "rgba(252,243,27,1)");
                } else {
                    $("data13").css("background-color", "rgba(252,243,27,0.35)");
                }
        
                if (EngineSource >= 12) {
                    $("data14").css("background-color", "rgba(252,243,27,1)");
                } else {
                    $("data14").css("background-color", "rgba(252,243,27,0.35)");
                }
                
                if (EngineSource >= 12.5) {
                    $("data15").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data15").css("background-color", "rgba(89,22,12,0.502)");
                }
        
                if (EngineSource >= 13) {
                    $("data16").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data16").css("background-color", "rgba(89,22,12,0.502)");
                }
        
                if (EngineSource >= 13.5) {
                    $("data17").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data17").css("background-color", "rgba(89,22,12,0.502)");
                }
        
                if (EngineSource >= 13.8) {
                    $("data18").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data18").css("background-color", "rgba(89,22,12,0.502)");
                }
        
                if (EngineSource >= 14) {
                    $("data19").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data19").css("background-color", "rgba(89,22,12,0.502)");
                }
        
                if (EngineSource >= 14.5) {
                    $("data20").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data20").css("background-color", "rgba(89,22,12,0.502)");
                }

                if (EngineSource >= 15) {
                    $("data21").css("background-color", "rgba(156, 36, 36, 1)");
                } else {
                    $("data21").css("background-color", "rgba(89,22,12,0.502)");
                }
            } else {
                if (reload === 0) {
                    setTimeout(() => {
                        $("#colors").css("opacity","0");
                        setTimeout(() => {
                            $("#DataUp").css("bottom","-3.5vw");
                            setTimeout(() => {
                                $("#Display").css("left","20vw");
                            }, 280);
                        }, 300);
                    }, 400);
                    reload = 1
                }
            }
            break;
        }
    }    
  )
  