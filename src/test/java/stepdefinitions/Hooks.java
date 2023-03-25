package stepdefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;


public class Hooks {

    @After
    public void tearDown(Scenario scenario){

        final byte[] screenshot=((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
        if (scenario.isFailed()) {
            scenario.attach(screenshot, "image/png","screenshots");
        }
        Driver.closeDriver();// Buradaki closs methodu her testten sonra calisacagi icin
        //testlerin sonuna yazacagimiz sayfayi kapatir ifadesi sorun olur
        // Bu yuzden bu ifadeyi testlerin sonunda kullanmamiz gerekir
    }

}
