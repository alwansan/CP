.class public interface abstract Lcom/shabakaty/downloader/nu5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@19.0.1"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract beginAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract clearMeasurementEnabled(J)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;J)V
.end method

.method public abstract generateEventId(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getAppInstanceId(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getCachedAppInstanceId(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getCurrentScreenClass(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getCurrentScreenName(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getGmpAppId(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract getTestFlag(Lcom/shabakaty/downloader/fv5;I)V
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract initForTests(Ljava/util/Map;)V
.end method

.method public abstract initialize(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/ow5;J)V
.end method

.method public abstract isDataCollectionEnabled(Lcom/shabakaty/downloader/fv5;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
.end method

.method public abstract logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/shabakaty/downloader/fv5;J)V
.end method

.method public abstract logHealthData(ILjava/lang/String;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;)V
.end method

.method public abstract onActivityCreated(Lcom/shabakaty/downloader/gx1;Landroid/os/Bundle;J)V
.end method

.method public abstract onActivityDestroyed(Lcom/shabakaty/downloader/gx1;J)V
.end method

.method public abstract onActivityPaused(Lcom/shabakaty/downloader/gx1;J)V
.end method

.method public abstract onActivityResumed(Lcom/shabakaty/downloader/gx1;J)V
.end method

.method public abstract onActivitySaveInstanceState(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/fv5;J)V
.end method

.method public abstract onActivityStarted(Lcom/shabakaty/downloader/gx1;J)V
.end method

.method public abstract onActivityStopped(Lcom/shabakaty/downloader/gx1;J)V
.end method

.method public abstract performAction(Landroid/os/Bundle;Lcom/shabakaty/downloader/fv5;J)V
.end method

.method public abstract registerOnMeasurementEventListener(Lcom/shabakaty/downloader/xv5;)V
.end method

.method public abstract resetAnalyticsData(J)V
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsent(Landroid/os/Bundle;J)V
.end method

.method public abstract setConsentThirdParty(Landroid/os/Bundle;J)V
.end method

.method public abstract setCurrentScreen(Lcom/shabakaty/downloader/gx1;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract setDataCollectionEnabled(Z)V
.end method

.method public abstract setDefaultEventParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setEventInterceptor(Lcom/shabakaty/downloader/xv5;)V
.end method

.method public abstract setInstanceIdProvider(Lcom/shabakaty/downloader/jw5;)V
.end method

.method public abstract setMeasurementEnabled(ZJ)V
.end method

.method public abstract setMinimumSessionDuration(J)V
.end method

.method public abstract setSessionTimeoutDuration(J)V
.end method

.method public abstract setUserId(Ljava/lang/String;J)V
.end method

.method public abstract setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/gx1;ZJ)V
.end method

.method public abstract unregisterOnMeasurementEventListener(Lcom/shabakaty/downloader/xv5;)V
.end method
