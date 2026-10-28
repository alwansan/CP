package com.shabakaty.cinemana.local;
import android.app.job.*;
public final class LocalEpisodeJob extends JobService {
 public boolean onStartJob(final JobParameters params){LocalRuntime.scanCancelled=false;LocalRuntime.init(this);LocalRuntime.NETWORK.execute(new Runnable(){public void run(){try{LocalRuntime.scan(false);}catch(Exception e){LocalRuntime.failure("job",e);}finally{jobFinished(params,false);}}});return true;}
 public boolean onStopJob(JobParameters params){LocalRuntime.scanCancelled=true;return true;}
}
