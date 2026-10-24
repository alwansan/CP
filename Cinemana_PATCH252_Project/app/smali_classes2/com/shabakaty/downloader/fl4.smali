.class public final Lcom/shabakaty/downloader/fl4;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/rm1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/rm1;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fl4;->e:Lcom/shabakaty/downloader/rm1;

    invoke-direct {p0, p4, p5}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fl4;->e:Lcom/shabakaty/downloader/rm1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/rm1;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
