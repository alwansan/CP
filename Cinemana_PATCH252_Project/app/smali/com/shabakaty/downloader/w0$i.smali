.class public final Lcom/shabakaty/downloader/w0$i;
.super Ljava/lang/Object;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final c:Lcom/shabakaty/downloader/w0$i;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lcom/shabakaty/downloader/w0$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/w0$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/w0$i;-><init>(Z)V

    sput-object v0, Lcom/shabakaty/downloader/w0$i;->c:Lcom/shabakaty/downloader/w0$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/w0;->w:Lcom/shabakaty/downloader/w0$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/w0$b;->e(Lcom/shabakaty/downloader/w0$i;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
