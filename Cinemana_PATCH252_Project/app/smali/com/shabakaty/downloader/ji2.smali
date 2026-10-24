.class public Lcom/shabakaty/downloader/ji2;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ii2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ii2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ji2;->r:Lcom/shabakaty/downloader/ii2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ji2;->r:Lcom/shabakaty/downloader/ii2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/ii2;->s:Ljava/util/List;

    .line 2
    iput-object v1, v0, Lcom/shabakaty/downloader/ii2;->r:Ljava/util/List;

    return-void
.end method
