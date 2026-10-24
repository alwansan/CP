.class public final Lcom/shabakaty/downloader/z74;
.super Lcom/shabakaty/downloader/f74;
.source "SingleOnErrorReturn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/z74$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z74;->a:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/z74;->b:Lcom/shabakaty/downloader/in1;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/z74;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z74;->a:Lcom/shabakaty/downloader/h84;

    new-instance v1, Lcom/shabakaty/downloader/z74$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/z74$a;-><init>(Lcom/shabakaty/downloader/z74;Lcom/shabakaty/downloader/y74;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
