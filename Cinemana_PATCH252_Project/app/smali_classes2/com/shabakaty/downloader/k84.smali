.class public final Lcom/shabakaty/downloader/k84;
.super Lcom/shabakaty/downloader/f74;
.source "SingleZipArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k84$a;,
        Lcom/shabakaty/downloader/k84$c;,
        Lcom/shabakaty/downloader/k84$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:[Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/in1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/in1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/in1<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/k84;->a:[Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/k84;->b:Lcom/shabakaty/downloader/in1;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k84;->a:[Lcom/shabakaty/downloader/h84;

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 3
    aget-object v0, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/v74$a;

    new-instance v2, Lcom/shabakaty/downloader/k84$a;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/k84$a;-><init>(Lcom/shabakaty/downloader/k84;)V

    invoke-direct {v1, p1, v2}, Lcom/shabakaty/downloader/v74$a;-><init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/in1;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void

    .line 4
    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/k84$b;

    iget-object v4, p0, Lcom/shabakaty/downloader/k84;->b:Lcom/shabakaty/downloader/in1;

    invoke-direct {v2, p1, v1, v4}, Lcom/shabakaty/downloader/k84$b;-><init>(Lcom/shabakaty/downloader/y74;ILcom/shabakaty/downloader/in1;)V

    .line 5
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    :goto_0
    if-ge v3, v1, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/k84$b;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    aget-object p1, v0, v3

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/shabakaty/downloader/k84$b;->a(Ljava/lang/Throwable;I)V

    return-void

    .line 9
    :cond_2
    iget-object v4, v2, Lcom/shabakaty/downloader/k84$b;->t:[Lcom/shabakaty/downloader/k84$c;

    aget-object v4, v4, v3

    invoke-interface {p1, v4}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
