.class public final Lcom/shabakaty/downloader/bo2;
.super Lcom/shabakaty/downloader/zn2;
.source "MaybeFilterSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bo2$a;
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
.field public final r:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/ye3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/ye3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ye3<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/zn2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/bo2;->r:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/bo2;->s:Lcom/shabakaty/downloader/ye3;

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/do2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/do2<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bo2;->r:Lcom/shabakaty/downloader/h84;

    new-instance v1, Lcom/shabakaty/downloader/bo2$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/bo2;->s:Lcom/shabakaty/downloader/ye3;

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/bo2$a;-><init>(Lcom/shabakaty/downloader/do2;Lcom/shabakaty/downloader/ye3;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
