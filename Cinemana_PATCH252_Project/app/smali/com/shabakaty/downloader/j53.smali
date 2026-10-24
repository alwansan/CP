.class public final Lcom/shabakaty/downloader/j53;
.super Lcom/shabakaty/downloader/zn2;
.source "ObservableSingleMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j53$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/zn2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/l53;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zn2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/j53;->r:Lcom/shabakaty/downloader/l53;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/do2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/j53;->r:Lcom/shabakaty/downloader/l53;

    new-instance v1, Lcom/shabakaty/downloader/j53$a;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/j53$a;-><init>(Lcom/shabakaty/downloader/do2;)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
