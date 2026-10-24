.class public Lcom/onesignal/k0$b;
.super Lcom/onesignal/k0$c;
.source "OSSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobService;",
            ">;"
        }
    .end annotation
.end field

.field public s:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onesignal/k0$c;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onesignal/k0$b;->r:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/onesignal/k0$b;->s:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "LollipopSyncRunnable:JobFinished needsJobReschedule: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/onesignal/k0;->h()Lcom/onesignal/k0;

    move-result-object v1

    iget-boolean v1, v1, Lcom/shabakaty/downloader/a23;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-static {}, Lcom/onesignal/k0;->h()Lcom/onesignal/k0;

    move-result-object v0

    iget-boolean v0, v0, Lcom/shabakaty/downloader/a23;->a:Z

    .line 4
    invoke-static {}, Lcom/onesignal/k0;->h()Lcom/onesignal/k0;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/shabakaty/downloader/a23;->a:Z

    .line 5
    iget-object v1, p0, Lcom/onesignal/k0$b;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/onesignal/k0$b;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobService;

    iget-object v2, p0, Lcom/onesignal/k0$b;->s:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method
