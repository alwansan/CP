package com.shabakaty.cinemana.local;

import android.app.job.JobParameters;
import android.app.job.JobService;

/* JADX INFO: loaded from: classes11.dex */
public final class LocalEpisodeJob extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(final JobParameters jobParameters) {
        LocalRuntime.scanCancelled = false;
        LocalRuntime.init(this);
        LocalRuntime.NETWORK.execute(new Runnable() { // from class: com.shabakaty.cinemana.local.LocalEpisodeJob.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    try {
                        LocalRuntime.scan(false);
                    } catch (Exception e) {
                        LocalRuntime.failure("job", e);
                    }
                } finally {
                    LocalEpisodeJob.this.jobFinished(jobParameters, false);
                }
            }
        });
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        LocalRuntime.scanCancelled = true;
        return true;
    }
}
