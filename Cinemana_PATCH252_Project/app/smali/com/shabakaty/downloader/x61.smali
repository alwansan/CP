.class public Lcom/shabakaty/downloader/x61;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pj3<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pj3;)V
    .locals 0
    .param p1    # Lcom/shabakaty/downloader/pj3;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/pj3<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/x61;->a:Lcom/shabakaty/downloader/pj3;

    return-void
.end method
