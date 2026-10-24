.class public final Lcom/shabakaty/downloader/pm;
.super Lcom/shabakaty/downloader/r51;
.source "EventLoop.kt"


# instance fields
.field public final x:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r51;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pm;->x:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public c0()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pm;->x:Ljava/lang/Thread;

    return-object v0
.end method
