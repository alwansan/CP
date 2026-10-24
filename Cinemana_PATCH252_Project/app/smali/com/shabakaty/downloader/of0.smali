.class public Lcom/shabakaty/downloader/of0;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/shabakaty/downloader/kh4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/kh4<",
        "Lcom/shabakaty/downloader/hb;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Ljava/util/concurrent/Executor;

.field public final synthetic s:Lcom/shabakaty/downloader/pf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pf0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/of0;->s:Lcom/shabakaty/downloader/pf0;

    iput-object p2, p0, Lcom/shabakaty/downloader/of0;->r:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hb;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "FirebaseCrashlytics"

    const-string v1, "Received null app settings, cannot send reports at crash time."

    .line 2
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/shabakaty/downloader/uk4;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/of0;->s:Lcom/shabakaty/downloader/pf0;

    iget-object v1, v1, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 5
    invoke-static {v1}, Lcom/shabakaty/downloader/tf0;->b(Lcom/shabakaty/downloader/tf0;)Lcom/shabakaty/downloader/uk4;

    move-result-object v1

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/shabakaty/downloader/of0;->s:Lcom/shabakaty/downloader/pf0;

    iget-object v0, v0, Lcom/shabakaty/downloader/pf0;->v:Lcom/shabakaty/downloader/tf0;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/of0;->r:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b24;->i(Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/kl4;->f(Ljava/util/Collection;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    :goto_0
    return-object p1
.end method
