.class public final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:J

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Landroid/content/Context;


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->r:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->s:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->t:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3
    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 4
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->s:Ljava/lang/String;

    .line 5
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->g:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->t:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->a(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 8
    iget-object v0, v0, Lcom/facebook/appevents/internal/SessionInfo;->b:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 9
    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->r:J

    .line 10
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 11
    iget-object v0, v0, Lcom/facebook/appevents/internal/SessionInfo;->b:Ljava/lang/Long;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 13
    sget-object v0, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 14
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 15
    sget-object v0, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->b(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    .line 17
    :cond_1
    iget v0, v0, Lcom/facebook/internal/FetchedAppSettings;->b:I

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->s:Ljava/lang/String;

    .line 19
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 20
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->g:Ljava/lang/String;

    .line 21
    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->b(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->s:Ljava/lang/String;

    .line 23
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->g:Ljava/lang/String;

    .line 24
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->t:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->a(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 26
    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 27
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 28
    iget v1, v0, Lcom/facebook/appevents/internal/SessionInfo;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/facebook/appevents/internal/SessionInfo;->c:I

    .line 29
    :cond_3
    :goto_1
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 30
    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/facebook/appevents/internal/SessionInfo;->b:Ljava/lang/Long;

    .line 32
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->e:Lcom/facebook/appevents/internal/SessionInfo;

    .line 33
    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->a()V

    return-void
.end method
