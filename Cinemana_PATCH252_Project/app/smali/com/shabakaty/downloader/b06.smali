.class public final Lcom/shabakaty/downloader/b06;
.super Lcom/shabakaty/downloader/pd;
.source "com.google.android.gms:play-services-auth@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/w54;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/pd<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/shabakaty/downloader/w54;"
    }
.end annotation


# instance fields
.field public j:Ljava/util/concurrent/Semaphore;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/pd;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/b06;->j:Ljava/util/concurrent/Semaphore;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/b06;->k:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/b06;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
