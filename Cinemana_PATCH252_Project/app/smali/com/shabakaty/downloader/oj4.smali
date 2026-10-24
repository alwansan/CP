.class public final Lcom/shabakaty/downloader/oj4;
.super Ljava/lang/Object;
.source "SynchronizedCaptureSessionOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oj4$b;,
        Lcom/shabakaty/downloader/oj4$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/oj4$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj4$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/oj4;->a:Lcom/shabakaty/downloader/oj4$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oj4;->a:Lcom/shabakaty/downloader/oj4$b;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj4$b;->stop()Z

    move-result v0

    return v0
.end method
