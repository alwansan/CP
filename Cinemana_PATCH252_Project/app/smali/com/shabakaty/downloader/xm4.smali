.class public interface abstract Lcom/shabakaty/downloader/xm4;
.super Ljava/lang/Object;
.source "ThreadConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/jn3;


# static fields
.field public static final j:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const/4 v2, 0x0

    const-string v3, "camerax.core.thread.backgroundExecutor"

    invoke-direct {v1, v3, v0, v2}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/xm4;->j:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method
