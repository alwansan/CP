.class public final Lcom/shabakaty/downloader/ht3;
.super Lcom/shabakaty/downloader/t43;
.source "ResultObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ht3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/t43<",
        "Lcom/shabakaty/downloader/et3<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/t43;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/t43<",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t43;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/t43<",
            "Lcom/shabakaty/downloader/xs3<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ht3;->r:Lcom/shabakaty/downloader/t43;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-",
            "Lcom/shabakaty/downloader/et3<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ht3;->r:Lcom/shabakaty/downloader/t43;

    new-instance v1, Lcom/shabakaty/downloader/ht3$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ht3$a;-><init>(Lcom/shabakaty/downloader/q53;)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
