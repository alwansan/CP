.class public final Lcom/shabakaty/downloader/pq$a;
.super Ljava/lang/Object;
.source "CallExecuteObservable.java"

# interfaces
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/nq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/nq<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile s:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pq$a;->r:Lcom/shabakaty/downloader/nq;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/pq$a;->s:Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/pq$a;->r:Lcom/shabakaty/downloader/nq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/nq;->cancel()V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/pq$a;->s:Z

    return v0
.end method
