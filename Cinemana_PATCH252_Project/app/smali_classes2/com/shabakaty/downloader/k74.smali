.class public final Lcom/shabakaty/downloader/k74;
.super Lcom/shabakaty/downloader/f74;
.source "SingleDelay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k74$a;
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

.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Lcom/shabakaty/downloader/wx3;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/shabakaty/downloader/wx3;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k74;->a:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-wide p2, p0, Lcom/shabakaty/downloader/k74;->b:J

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/k74;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/k74;->d:Lcom/shabakaty/downloader/wx3;

    .line 6
    iput-boolean p6, p0, Lcom/shabakaty/downloader/k74;->e:Z

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v04;

    invoke-direct {v0}, Lcom/shabakaty/downloader/v04;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/k74;->a:Lcom/shabakaty/downloader/h84;

    new-instance v2, Lcom/shabakaty/downloader/k74$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/shabakaty/downloader/k74$a;-><init>(Lcom/shabakaty/downloader/k74;Lcom/shabakaty/downloader/v04;Lcom/shabakaty/downloader/y74;)V

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method
