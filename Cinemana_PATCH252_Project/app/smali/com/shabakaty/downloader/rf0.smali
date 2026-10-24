.class public Lcom/shabakaty/downloader/rf0;
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

.field public final synthetic s:Lcom/shabakaty/downloader/sf0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf0;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rf0;->s:Lcom/shabakaty/downloader/sf0;

    iput-object p2, p0, Lcom/shabakaty/downloader/rf0;->r:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/hb;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "FirebaseCrashlytics"

    const-string v1, "Received null app settings at app startup. Cannot send cached reports"

    .line 2
    invoke-static {p1, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/rf0;->s:Lcom/shabakaty/downloader/sf0;

    iget-object p1, p1, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    invoke-static {p1}, Lcom/shabakaty/downloader/tf0;->b(Lcom/shabakaty/downloader/tf0;)Lcom/shabakaty/downloader/uk4;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/rf0;->s:Lcom/shabakaty/downloader/sf0;

    iget-object p1, p1, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/tf0;->m:Lcom/shabakaty/downloader/b24;

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/rf0;->r:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/b24;->i(Ljava/util/concurrent/Executor;)Lcom/shabakaty/downloader/uk4;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/rf0;->s:Lcom/shabakaty/downloader/sf0;

    iget-object p1, p1, Lcom/shabakaty/downloader/sf0;->s:Lcom/shabakaty/downloader/tf0$a;

    iget-object p1, p1, Lcom/shabakaty/downloader/tf0$a;->s:Lcom/shabakaty/downloader/tf0;

    iget-object p1, p1, Lcom/shabakaty/downloader/tf0;->q:Lcom/shabakaty/downloader/zk4;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zk4;->b(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    :goto_0
    return-object p1
.end method
