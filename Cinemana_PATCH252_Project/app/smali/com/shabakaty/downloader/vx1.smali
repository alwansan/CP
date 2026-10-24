.class public Lcom/shabakaty/downloader/vx1;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/shabakaty/downloader/vx1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
