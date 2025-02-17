package demoblaze;

import com.intuit.karate.junit5.Karate;

public class RunnerMain {

    @Karate.Test
    Karate testApi() {
        return Karate.run().relativeTo(getClass());
    }
}
